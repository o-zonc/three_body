# 자원 오브젝트 및 Interaction 구성

이 문서는 `dim_comp`의 자원 오브젝트 구조를 참고하여 `three_body`에서 자원과 정보 UI를 구성하는 방법을 정리한다.

## 1. 자원 오브젝트의 기본 구조

자원 하나는 다음과 같은 형태로 맵에 배치한다.

```text
        자원 블록
      ┌───────────┐
      │   WOOD    │  ← 지면에서 한 칸 위
      └───────────┘
      ┌───────────┐
      │    SLAB   │  ← 지면에 설치
      └───────────┘
──────────── 지면 ────────────
```

- 아래의 반 블록은 자원 오브젝트의 시각적인 받침대이자 플레이어가 우클릭하는 위치이다.
- 실제로 획득 가능한 자원 블록은 반 블록보다 한 칸 위에 설치한다.
- 반 블록의 클릭을 처리하기 위해 보이지 않는 `interaction` 엔티티를 같은 영역에 배치한다.
- 플레이어가 보는 관점에서는 반 블록을 우클릭하지만, 데이터팩에서는 `interaction` 엔티티가 우클릭 이벤트를 받는다.

## 2. Interaction 엔티티

`interaction` 엔티티는 자원 오브젝트의 정보 UI를 호출하는 용도로 사용한다.

각 엔티티에는 최소한 다음과 같은 태그를 부여한다.

```text
resource/resource
<material>
```

예를 들어 나무 자원이라면:

```text
resource
wood
```

과 같이 자원임을 나타내는 태그와 Material ID를 구분해서 부여한다.

`interaction` 엔티티의 `width`와 `height`는 실제 반 블록의 클릭 영역에 맞춰 설정한다. 정확한 값과 좌표는 맵에서 사용하는 반 블록의 종류에 맞춰 테스트한다.

## 3. 우클릭 처리 흐름

우클릭은 자원 획득을 직접 실행하지 않고 **자원 정보 UI를 표시하는 용도**로 사용한다.

```text
interaction 엔티티 우클릭
        ↓
interaction.player 감지
        ↓
interaction/right
        ↓
resource/interaction/manager
        ↓
resource/<material>/ui/interact
        ↓
resource/<material>/ui/info
```

`dim_comp`와 마찬가지로 `interaction` 엔티티의 `interaction.player` 데이터를 이용하여 마지막으로 상호작용한 플레이어를 실행 대상으로 삼는다.

## 4. 자원 획득과 우클릭의 분리

자원 획득은 우클릭으로 처리하지 않는다.

위쪽에 설치된 실제 자원 블록을 플레이어가 파괴하면 별도의 자원 재생 시스템이 이를 감지한다.

```text
실제 자원 블록 파괴
        ↓
resource/<material>/regen/ticking
        ↓
resource/<material>/regen/break
        ↓
Material API
        ↓
resource/add
        ↓
해당 Material 증가
```

이후 재생 타이머가 끝나면:

```text
resource/<material>/regen/ticking
        ↓
resource/<material>/regen/place
        ↓
실제 자원 블록 복구
```

따라서 두 기능의 역할은 명확하게 분리한다.

| 동작 | 담당 시스템 |
| --- | --- |
| 반 블록 우클릭 | `interaction` + `ui` |
| 자원 정보 표시 | `resource/<material>/ui/info` |
| 실제 자원 블록 파괴 | Minecraft의 블록 파괴 |
| 파괴 감지 | `regen/ticking` |
| 자원 증가 | Material API (`resource/add`) |
| 자원 재생 | `regen/place` |

## 5. Material별 디렉터리 구조

현재 `three_body`에서 사용하는 Material은 다음 14종이다.

```text
wood
stone
coal
copper
iron
gold
diamond
emerald
lapis
heat
cold
information
time

### 극야 정산 및 보관소

극야 차원에 진입하면 `#GLOBAL reckoning_ready`가 1이 되며, `po` 태그가 붙은 정보/시간 오브젝트를 처음 우클릭할 때 `reckoning/run`이 한 번 실행된다.

- 기본 정산: 정보 8조각, 시간 2조각, 깨달음 1개
- 정보 보관소: 10/25/50/100/250/500/1000에서 각각 1층 상점/관측소/2층 상점/연금술 공방/공장/입자가속기/타임머신 보호
- 시간 보관소: 5/20/50/100에서 각각 고대/중세/근대/현대 시작, 10에서 막대기 단계 보호, 50에서 엘리베이터 보호
- 정보 500, 시간 250에서 자동 인출 영구 해금
- 정보 1000, 시간 500에서 소지 한도 각각 +20000, +10000
- 자원 상점 3층과 발전과제 생산 보상은 정산 초기화 대상에서 제외
- 깨달음으로 여명에 진입하면 정보/시간 추가 상점 플래그가 활성화되고 정산대에서 정보 32·시간 8로 리액터를 1회 구매할 수 있음
world_eye
```

각 Material은 기본적으로 다음 구조를 갖는다.

```text
resource/
└── <material>/
    ├── ui/
    │   ├── interact.mcfunction
    │   └── info.mcfunction
    │
    └── regen/
        ├── ticking.mcfunction
        ├── break.mcfunction
        └── place.mcfunction
```

단, `regen`이 필요하지 않은 추상/특수 Material은 실제 획득 방식이 확정된 뒤 별도의 구조를 사용한다. 모든 Material에 무조건 블록 재생 시스템을 적용하지 않는다.

## 6. 맵 제작 시 자원 하나를 배치하는 순서

### Step 1. 받침대 설치

지면에 반 블록을 설치한다.

```text
slab
```

### Step 2. 자원 블록 설치

반 블록보다 한 칸 위에 실제 자원 블록을 설치한다.

예:

```text
slab
  ↑
oak_log
```

### Step 3. Interaction 엔티티 배치

반 블록의 클릭 영역을 덮도록 `interaction` 엔티티를 배치한다.

엔티티에는 해당 Material을 식별할 수 있는 태그를 부여한다.

### Step 4. UI 연결

해당 Material의:

```text
resource/<material>/ui/interact.mcfunction
resource/<material>/ui/info.mcfunction
```

을 작성한다.

### Step 5. 자원 파괴 시스템 연결

실제 자원 블록이 파괴되었을 때:

```text
regen/ticking → regen/break → resource/add
```

이 연결이 이루어지는지 확인한다.

### Step 6. 자원 재생 연결

쿨다운이 끝나면:

```text
regen/ticking → regen/place
```

을 통해 자원 블록이 원래 위치에 다시 생성되는지 확인한다.

## 7. 테스트 기준

첫 번째 프로토타입은 `wood` 하나만 구현한다.

성공 여부는 다음 순서로 확인한다.

1. 반 블록을 우클릭한다.
2. `wood/ui/info`가 실행되어 나무 자원 정보가 표시된다.
3. 위의 실제 나무 블록을 파괴한다.
4. 나무의 Material 값이 Material API를 통해 증가한다.
5. 재생 타이머가 시작된다.
6. 일정 시간이 지나면 나무 블록이 원래 위치에 복구된다.
7. 복구된 나무를 다시 파괴할 수 있다.

이 전체 흐름이 정상적으로 작동한 뒤 동일한 구조를 다른 실제 채취형 Material에 확장한다.

## 8. 시설물 상수, 스코어보드 및 연결 구조

이 절은 현재 구현된 시설물의 정의 위치와 실행 흐름을 정리한다. 시설물마다 데이터 정의 방식이 같지는 않으므로, 새 시설을 추가할 때는 아래의 **상수 기반 방식**과 **함수 내부 정의 방식**을 구분해야 한다.

### 8.1 로드 시 상수 정의 순서

시설 상수는 `data/minecraft/tags/function/load.json`에서 다음 순서로 불러온다.

```text
init
  ↓
const_def
  ↓
factory/const_extension
```

- `init`: objective와 보스바를 생성한다.
- `const_def`: `storage data const`를 비운 뒤 기본 상수를 한 번에 정의한다.
- `factory/const_extension`: `const.factory`의 기존 항목을 수정하고 Lv. 5~6과 냉기 공장을 덧붙인다.
- `/reload`할 때마다 상수 storage가 다시 만들어지므로 런타임 진행 상태는 상수가 아니라 scoreboard에 저장한다.

### 8.2 `const_def`에 시설을 정의하는 방법

현재 `const.structure`에 등록된 시설은 연금술 공방이다.

```snbt
structure: {
  alchemy_workshop: [
    {stage:0, required_age:5, cost:[...]},
    {stage:1, required_age:6, cost:[...]},
    {stage:2, required_age:7, cost:[...]}
  ]
}
```

각 필드의 의미는 다음과 같다.

| 필드 | 의미 |
| --- | --- |
| `stage` | 현재 구매 단계. 0은 최초 건설, 1 이상은 다음 시설 레벨이다. |
| `required_age` | 구매 가능한 최소 `civilization_age`이다. |
| `cost` | Material API가 검사하고 차감할 `{type, amount}` 목록이다. |

연결 흐름은 다음과 같다.

```text
interaction 태그: shop + alchemy
  → interaction/right
  → shop/alchemy/interact
  → shop/alchemy/prepare
  → shop/alchemy/read with storage data tmp.alchemy_shop
  → const.structure.alchemy_workshop[stage]
  → shop/alchemy/purchase
  → common/structure/alchemy_workshop/on
```

`prepare`는 `#alchemy_workshop unlock`과 `#level alchemy_workshop`을 구매 단계로 변환하고, `read`가 해당 단계의 상수 데이터를 `tmp` storage로 읽는다.

자원별 공장 레벨은 `const.factory` 배열에 정의한다.

```snbt
{
  id:"wood",
  levels:[
    {lvl:0, output:..., fuel:..., cost:[...]},
    ...
  ]
}
```

| 필드 | 의미 |
| --- | --- |
| `id` | 공장이 생산하는 Material ID이다. scoreboard의 가상 플레이어 `#<id>`와 연결된다. |
| `lvl` | 해당 자원 공장의 현재 레벨이다. |
| `output` | 생산 주기마다 추가하는 기본 생산량이다. |
| `fuel` | 동작에 사용하는 연료량이다. |
| `cost` | 다음 레벨 구매 비용이다. 마지막 레벨에서는 생략할 수 있다. |

기본 배열은 `const_def`, 후반 레벨과 `cold` 항목은 `factory/const_extension`에서 정의한다. UI는 `factory/read`로 현재 `id`와 `lvl`의 데이터를 읽고, 구매는 `factory/purchase`, 실제 생산은 `factory/tick → factory/run`으로 이어진다.

### 8.3 시설물에 정의된 scoreboard

시설 상태에는 실제 플레이어 이름 대신 `#GLOBAL`, `#level`, `#<material>` 같은 가상 플레이어를 사용한다.

| objective | score holder | 용도 |
| --- | --- | --- |
| `unlock` | `#alchemy_workshop` | 연금술 공방 최초 건설 여부 |
| `alchemy_workshop` | `#level` | 연금술 공방 레벨 |
| `elevator_unlocked` | `#GLOBAL` | 일반 엘리베이터 개방 상태 |
| `elevator_jump`, `elevator_jump_prev` | 실제 플레이어 | 점프 입력 감지와 이전 값 저장 |
| `factory_build_stage` | `#GLOBAL` | 오버월드 건설 순서: 0 공장, 1 입자가속기, 2 타임머신, 3 완료 |
| `factory_elevator_unlocked` | `#GLOBAL` | 공장 엘리베이터 개방 단계 |
| `time_machine_level` | `#GLOBAL` | 타임머신 레벨(0~4) |
| `factory_level` | `#<material>` | 자원별 공장 레벨 |
| `factory_unlocked` | `#<material>` | 자원별 생산 라인 해금 여부 |
| `factory_enabled` | `#<material>` | 자원별 생산 라인 작동 여부 |
| `factory_timer` | `#<material>` | 다음 생산까지 남은 틱 |
| `factory_status` | `#<material>` | UI와 연출에서 사용하는 생산 상태 |
| `factory_trigger` | 실제 플레이어 | 공장 UI 클릭 명령 전달 |
| `accelerator_level` | `#GLOBAL` | 입자가속기 레벨(0~4) |
| `accelerator_timer` | `#GLOBAL` | 다음 자동 생산까지 남은 틱 |
| `experiment_cooldown` | `#GLOBAL` | 수동 실험 재사용 대기시간 |
| `accelerator_trigger` | 실제 플레이어 | 입자가속기 UI 클릭 명령 전달 |
| `alien_interference` | `#GLOBAL` | 외계 간섭 활성 여부 |
| `alien_timer` | `#GLOBAL` | 다음 간섭 처리까지 남은 틱 |
| `shield_charge` | `#GLOBAL` | 양자 보호막의 남은 충전량 |
| `shield_maintenance` | `#GLOBAL` | 보호막 유지 관련 타이머 |
| `unlock` | `#frozen_shop` | 얼어붙은 상점 개방 여부 |
| `unlock` | `#frozen_bridge` | 얼음 협곡 다리 개방 여부 |
| `unlock` | `#frozen_maze` | 지하 미로 개방 여부 |

`tmp` objective의 `#...` 값은 비용 검사, UI 출력, 난수 계산에만 사용하는 임시값이다. 영구 진행 상태로 사용하지 않는다. `var_init`는 기존 월드에 objective 값이 없을 때 기본값을 채우고 허용 범위를 보정한다.

### 8.4 Interaction 엔티티와 시설 UI 연결

시설용 `interaction` 엔티티에는 기능을 나타내는 태그를 붙이고 `interaction/right.mcfunction`에서 분배한다.

| 엔티티 태그 | 연결 함수 |
| --- | --- |
| `shop, alchemy` | `shop/alchemy/interact` |
| `shop, observatory` | `shop/observatory/interact` |
| `shop, factory` | `shop/factory/interact` |
| `shop, elevator` | `elevator/shop_interact` |
| `factory` (`shop` 제외) | `factory/interact` |
| `factory, accelerator` | `accelerator/ui` |
| `factory, shield` | `shield/ui` |
| `frozen, info` | `frozen/interaction/info` |
| `frozen, shop` | `frozen/interaction/shop` |

우클릭 대상 플레이어가 필요한 함수는 `on target run function ...`으로 실행한다. 공장 개별 라인은 `factory/interact`가 interaction 엔티티의 태그를 판별하여 Material ID가 포함된 `factory/ui`를 호출한다.

UI의 클릭 가능한 텍스트는 `/trigger` 값을 설정하고, 매 tick 다음 함수가 이를 소비한다.

```text
factory_trigger     → factory/trigger
accelerator_trigger → accelerator/trigger
shop_trigger        → dimensions/overworld/shop/shop_trigger
```

처리가 끝나면 trigger를 reset하고 다시 enable해야 다음 클릭을 받을 수 있다.

### 8.5 함수 내부에 직접 정의된 시설

아래 시설은 현재 `const.structure`에 들어 있지 않다.

| 시설 | 비용/단계 정의 위치 | 상태 | 구조물 반영 |
| --- | --- | --- | --- |
| 오버월드 공장·입자가속기·타임머신 | `shop/factory/prepare` | `#GLOBAL factory_build_stage` | `shop/factory/purchase`와 발전과제/구조물 함수 |
| 천문대 | `shop/observatory/interact`, `purchase` | 발전과제 `0_overworld/20_observatory` | `common/structure/observatory/on` |
| 신호기·엘리베이터 | `elevator/shop_interact`, `unlock` | `#GLOBAL elevator_unlocked` | `common/structure/beacon/on`, `elevator/tick` |
| 얼어붙은 상점 | `frozen/interaction/info`, `purchase_shop` | `#frozen_shop unlock` | `frozen/structure/shop/on` |
| 얼음 협곡 다리 | `frozen/interaction/shop`, `purchase_bridge` | `#frozen_bridge unlock` | `frozen/structure/bridge/on` |
| 지하 미로 | `frozen/interaction/shop`, `purchase_maze` | `#frozen_maze unlock` | `frozen/structure/maze/on` |

얼어붙은 세계 시설의 클릭 흐름은 다음과 같다.

```text
frozen/info interaction
  → frozen/interaction/info
  → /trigger shop_trigger set 1901
  → purchase_shop
  → #frozen_shop unlock = 1
  → frozen/structure/shop/on

frozen/shop interaction
  → frozen/interaction/shop
  → shop_trigger 1902 또는 1903
  → purchase_bridge 또는 purchase_maze
  → 해당 unlock 값 갱신
  → frozen/structure/<facility>/on
  → 갱신된 UI 다시 표시
```

새 시설을 반복적으로 확장할 계획이라면 비용과 요구 시대를 `const.structure.<id>`로 옮기는 편이 좋다. 단발성 시설은 현재처럼 UI와 구매 함수에 동일한 비용을 직접 정의할 수 있지만, 두 위치의 비용이 달라지지 않도록 함께 수정해야 한다.

### 8.6 새 시설 추가 체크리스트

1. `const_def`의 `const.structure.<id>` 또는 전용 상수 배열에 단계, 요구 시대, 비용을 정의한다.
2. 영구 상태가 필요하면 `init`에 objective를 만들고 `var_init`과 `reset_state`에 기본값을 추가한다.
3. 맵의 `interaction` 엔티티에 공통 태그와 시설 식별 태그를 붙인다.
4. `interaction/right`에 UI 라우팅을 추가한다.
5. 클릭 UI에 고유 trigger 값을 배정하고 trigger 처리 함수에 구매 함수를 연결한다.
6. 구매 함수에서 `resource/check_cost → resource/cost/take → 상태 갱신` 순서를 지킨다.
7. `common/structure/<id>/on|off` 또는 차원별 `structure/<id>/on|off`를 연결한다.
8. 구매 직후 같은 UI를 다시 호출해 변경된 상태와 새 선택지를 표시한다.
9. 신규 월드, 기존 월드, `/reload`, `reset_state`에서 각각 초기화와 복원이 정상인지 확인한다.

## 9. 메마른 차원 Interaction

메마른 차원은 금, 열기, 차원 소개, 고대 문명 발굴 장치의 네 Interaction을 사용한다.

### 9.1 자원 블록과 Interaction

| Interaction 태그 | 블록 | 차원과 좌표 | 연결 함수 |
| --- | --- | --- | --- |
| `product, gold` | 금 원석 블록 | `minecraft:dried`, `6 65 0` | `resource/material/gold/ui/interact` |
| `product, heat` | 마그마 블록 | `minecraft:dried`, `-6 65 0` | `resource/material/heat/ui/interact` |

두 자원 Interaction은 공통 `product` 태그로 `resource/product_interaction_manager`에 들어간 뒤 Material 태그로 UI가 분배된다. 블록 파괴와 재생은 다음 흐름을 사용한다.

```text
resource/tick
  → resource/material/<gold|heat>/tick
  → resource/block/tick {id, x, y, z}
  → harvest
  → resource/add_material/<id>
  → cooldown 종료
  → place
```

메마른 차원 최초 진입 시 `dried/move`가 `#gold unlock`과 `#heat unlock`을 1로 만들고 두 블록을 배치한다. 이후 `place`와 `tick`은 모두 `minecraft:dried`에서 명시적으로 실행되므로 호출자의 현재 차원에 의존하지 않는다.

### 9.2 메마른 세계 소개

`dried, info` 태그를 가진 Interaction은 다음과 같이 연결된다.

```text
dried + info
  → interaction/right
  → dried/interaction/info
```

소개 UI에는 메마른 세계의 설명, 일반 자원 금, 특수 자원 열기, 현재 열기 수급량이 표시된다. `#GLOBAL era_paused`가 1이면 생산 중단 안내도 함께 표시한다. 얼어붙은 세계 소개와 달리 구매 또는 해금 버튼은 없다.

### 9.3 고대 문명 발굴 장치

`dried, left` 태그를 가진 Interaction은 먼 과거의 문명에서 발굴한 물자 회수 장치로 연결된다.

```text
dried + left
  → interaction/right
  → dried/relic/ui
  → /trigger shop_trigger set 2001
  → dried/relic/upgrade
```

장치 설정은 `const.structure.dried_relic`에 정의한다.

| 레벨 | 회수 주기 | 회수량 | 다음 레벨 비용 |
| ---: | ---: | ---: | --- |
| 0 | 1200틱 | 2개 | 금 25, 열기 25 |
| 1 | 900틱 | 4개 | 금 75, 열기 75 |
| 2 | 600틱 | 8개 | 정보 50, 시간 3 |
| 3 | 400틱 | 15개 | 정보 150, 시간 10 |
| 4 | 200틱 | 30개 | 최고 레벨 |

| objective | score holder | 용도 |
| --- | --- | --- |
| `upgrade` | `#dried_relic_level` | 현재 장치 레벨(0~4) |
| `generate` | `#dried_relic_timer` | 다음 물자 회수까지 남은 틱 |
| `tmp` | `#dried_relic_interval`, `#dried_relic_amount`, `#dried_relic_roll` 등 | 상수 조회와 일회성 계산 |

주기 지급은 다음 조건과 순서로 처리한다.

```text
tick
  → dried/relic/tick
  → 메마른 차원에 플레이어가 있는지 확인
  → era_paused가 아닌 동안 타이머 감소
  → dried/relic/collect
  → 일반 자원 9종 중 하나를 무작위 선택
  → 현재 레벨의 amount만큼 Material API로 지급
  → 현재 레벨의 interval로 타이머 재설정
```

무작위 대상은 `wood`, `stone`, `coal`, `copper`, `iron`, `gold`, `diamond`, `emerald`, `lapis`이다. 장치 레벨과 타이머는 `var_init`에서 기존 월드에도 안전하게 초기화하며 `reset_state`에서 각각 0과 1200으로 초기화한다.

# 극야 차원 정산 & 보관소 시스템

## 1. 극야 차원 초기화 규칙

**초기화 대상:**

- 모든 진행도 (자원 해금, 시대, 보유 자원)

**초기화 제외:**

- 발전과제 보상
- 자원 상점 3층

**초기화 예정 정리 필요:**

- 관측소, 공방, 공장, 입자가속기, 타임머신

---

## 2. 정산(Reckoning) 시스템

### 2.1 정산 시점

- 극야 차원 진입 후 인터랙션 시 실행

### 2.2 정산 지급 항목

1. **정보** (일정량)
2. **시간** (일정량)
3. **깨달음** (여명 차원 진입 키)

### 2.3 여명 차원 진입 보너스

- 깨달음 사용 → 정보/시간 추가 상점 활성화
- 추가 상점에서 리액터 구매 가능

---

## 3. 보관소(Vault) 시스템

### 3.1 정보 보관소

| 저장량 효과  |                             |
| ------- | --------------------------- |
| 10      | 자원 상점 1층 초기화 보호             |
| 25      | 관측소 초기화 보호                  |
| 50      | 자원 상점 2층 초기화 보호             |
| 100     | 연금술 공방 초기화 보호               |
| 250     | 공장 초기화 보호                   |
| 500     | 입자가속기 초기화 보호 + 정보 자동 인출 활성화 |
| 1000    | 타임머신 초기화 보호 + 총량 20000 증가   |

### 3.2 시간 보관소

| 저장량 효과  |                             |
| ------- | --------------------------- |
| 5       | 시대 시작: 고대                   |
| 10      | 막대기 발전 단계 초기화 보호            |
| 20      | 시대 시작: 중세                   |
| 50      | 시대 시작: 근대 + 엘리베이터 레벨 초기화 보호 |
| 100     | 시대 시작: 현대                   |
| 250     | 시간 자동 인출 활성화                |
| 500     | 총량 10000 증가                 |

---

## 3.3 구현 항목

- [ ] `resource_interaction`에 정산 함수 추가
- [ ] 정보/시간 지급 메커니즘 설계 및 구현
- [ ] 보관소 보호 메커니즘 구현
- [ ] 깨달음 시스템 연계 (여명 차원 상점 활성화)