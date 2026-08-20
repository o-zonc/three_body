# three_body 개발 현황 및 구현 계획

이 문서는 현재까지 확정된 게임 방향, 실제 구현된 내용, 검증이 필요한 항목과 앞으로 구현할 작업을 정리한다.

## 1. 전체 게임 방향

`three_body`는 스토리 중심의 증분형 게임으로 설계한다.

기본 성장 루프는 다음과 같다.

> 자원 수집 → 생산력 강화 → 시대 발전 → 문명 멸망 → 메타 자원 정산 → 새로운 문명 → 더 빠른 성장

- 오버월드, 얼어붙은 세계, 메마른 세계 등은 각각 별개의 문명으로 표현한다.
- 구현에서는 문명별로 자원 스코어보드를 나누지 않고 공용 `material` 자원 풀을 사용한다.
- 일반 차원 이동과 문명 전환은 별개의 사건으로 취급한다.
- `*/move` 함수에서는 자원과 진행도를 초기화하지 않는다.
- 문명 초기화는 여명에서 새로운 문명을 확정할 때 전용 함수가 처리하도록 한다.

## 2. 자원 계층

### 2.1 일반 자원

나무, 돌, 석탄, 구리, 철, 금, 다이아몬드, 에메랄드, 청금석 등의 일반 자원은 기존처럼 `material` 스코어보드가 실제 수량을 관리한다.

- 차원을 이동해도 유지한다.
- 후반에는 수천에서 수억 단위까지 성장할 수 있다.
- 스코어보드 오버플로를 방지하기 위해 현재 자원 상한은 `999,999,999`를 사용한다.
- 문명 전환을 확정할 때 초기화 대상이 된다.

### 2.2 메타 자원

정보와 시간은 일반 자원과 분리한다.

| 자원 | 실제 아이템 | 의미 |
| --- | --- | --- |
| 정보 | 자수정 조각 | 문명의 발전과 멸망에서 남은 기록과 지식 |
| 시간 | 메아리 조각 | 여러 문명의 탄생과 멸망을 거치며 축적된 시간 |

- 전용 `custom_data`가 붙은 아이템만 메타 자원으로 인정한다.
- 일반 자수정 조각과 일반 메아리 조각은 정보와 시간으로 계산하지 않는다.
- 인벤토리는 지갑, 극야 보관소는 은행 역할을 한다.
- 현대와 미래의 해금은 최초 획득이 아니라 추가 생산 방법의 해금을 의미한다.

## 3. 지금까지 구현한 내용

### 3.1 정보·시간 아이템

다음 전용 아이템을 구현했다.

- 정보: `minecraft:amethyst_shard`
  - `minecraft:custom_data={three_body:{meta:"information"}}`
  - 이름: `정보`
- 시간: `minecraft:echo_shard`
  - `minecraft:custom_data={three_body:{meta:"time"}}`
  - 이름: `시간`

관련 함수:

```text
data/minecraft/function/meta/
├─ migrate.mcfunction
├─ sync.mcfunction
├─ information/
│  ├─ give.mcfunction
│  ├─ give_item.mcfunction
│  ├─ take_cost.mcfunction
│  ├─ take_from_bank.mcfunction
│  └─ clear_item.mcfunction
└─ time/
   ├─ give.mcfunction
   ├─ give_item.mcfunction
   ├─ take_cost.mcfunction
   ├─ take_from_bank.mcfunction
   └─ clear_item.mcfunction
```

### 3.2 소지 한도와 자동 보관

`meta` objective를 추가하고 다음 초기값을 사용한다.

```text
#information_capacity meta = 64
#time_capacity meta = 16
#information_bank meta = 0
#time_bank meta = 0
```

- 지급량 중 소지 한도 안에 들어가는 수량은 실제 아이템으로 지급한다.
- 소지 한도를 넘는 수량은 해당 보관소 점수에 자동 저장한다.
- 초과분을 소멸시키지 않는다.
- 향후 소지 한도 증가 업그레이드에서 capacity 값을 변경할 수 있다.

### 3.3 기존 시스템 호환

기존 UI와 비용 코드가 `#information material`, `#time material`을 사용하므로 현재는 다음 파생값을 매 틱 동기화한다.

```text
#information material = 정보 아이템 수 + 정보 보관량
#time material = 시간 아이템 수 + 시간 보관량
```

이 `material` 값은 호환용 표시값이며 실제 원장은 아이템과 `meta` 보관소다.

기존 정보·시간 비용은 다음 순서로 소비한다.

1. 보관소에서 먼저 소비한다.
2. 보관량이 부족하면 남은 비용을 인벤토리 아이템에서 소비한다.
3. 소비 후 호환용 `material` 값을 다시 동기화한다.

기존 `resource/add_material/information`과 `resource/add_material/time`도 새로운 지급 함수에 연결했다.

### 3.4 기존 저장 데이터 마이그레이션

기존 월드에 저장된 다음 값을 최초 한 번 새 보관소로 이전한다.

```text
#information material → #information_bank meta
#time material → #time_bank meta
```

이전 완료 여부는 `#meta_migrated meta`로 기록한다.

### 3.5 정보·시간 UI

기존 정보·시간 상호작용 UI에서 다음 내용을 표시하도록 변경했다.

- 대응 아이템
- 현재 소지량
- 현재 소지 한도
- 보관소 수량

아이템 자체의 우클릭 감지 방식은 사용하지 않는다. 극야에 배치한 `interaction` 엔티티를 우클릭했을 때 다음 태그 조합에 따라 UI를 연다.

```text
po + info → 정보 UI
po + time → 시간 UI
```

### 3.6 개발용 테스트

다음 명령으로 정보 5개와 시간 2개를 지급하고 UI를 확인할 수 있다.

```mcfunction
/function test/meta
```

### 3.7 차원 로딩 오류 수정

존재하지 않는 블록 ID인 `deepslate_diamond_block`을 다음 두 곳에서 `deepslate_diamond_ore`로 수정했다.

- `data/minecraft/dimension/dawn.json`
- `data/minecraft/function/const_def.mcfunction`

모든 차원 JSON이 JSON 문법상 정상인 것을 확인했다.

아이템 우클릭 방식은 완전히 제거했습니다.

이제 [interaction/right.mcfunction](/C:/Users/xeren/AppData/Roaming/.minecraft/saves/삼체/datapacks/three_body/data/minecraft/function/interaction/right.mcfunction:9)에서 다음 조건으로 UI를 엽니다.

```text
po + info → 정보 UI
po + time → 시간 UI
```

극야에서 다음과 같이 배치할 수 있습니다.

```mcfunction
summon interaction ~ ~ ~ {width:1.0f,height:1.0f,response:1b,Tags:["po","info"]}
summon interaction ~ ~ ~ {width:1.0f,height:1.0f,response:1b,Tags:["po","time"]}
```

함께 제거한 내용:

- 아이템의 `consumable` 컴포넌트
- 우클릭용 lore
- 재사용 대기시간
- `consume_item` 발전 과제
- 소비된 아이템 복구 함수

따라서 아이템 수량이 순간적으로 변하는 현상도 더 이상 발생하지 않습니다. [development_plan.md](/C:/Users/xeren/AppData/Roaming/.minecraft/saves/삼체/datapacks/three_body/development_plan.md)에도 새 UI 조건을 반영했습니다.

## 4. 현재 검증해야 할 내용

다음 항목은 실제 Minecraft 월드에서 확인해야 한다.

- `/reload` 시 함수 및 아이템 컴포넌트 파싱 오류가 없는지 확인
- `/function test/meta` 실행 시 전용 아이템이 정상 지급되는지 확인
- 일반 자수정 조각과 메아리 조각이 메타 자원으로 계산되지 않는지 확인
- 정보 64개를 넘겨 지급했을 때 초과분이 정보 보관소에 들어가는지 확인
- 시간 16개를 넘겨 지급했을 때 초과분이 시간 보관소에 들어가는지 확인
- 정보 또는 시간이 포함된 기존 구매가 정상적으로 비용을 검사하고 차감하는지 확인
- 기존 저장 데이터의 정보·시간 점수가 보관소로 한 번만 이전되는지 확인
- 멀티플레이 환경을 지원할 경우 전역 보관소 정책이 적절한지 확인

현재 구조는 기존 데이터팩의 전역 fake player 자원 구조에 맞춰 보관소도 전역으로 관리한다.

## 5. 앞으로 구현할 작업

### 5.1 정보·시간 보관소

극야에 실제 입금·출금 시설을 만든다.

필요한 기능:

- 정보 전부 입금
- 시간 전부 입금
- 지정 수량 출금
- 소지 한도를 넘는 출금 차단
- 현재 소지량, 한도, 보관량 표시
- 보관소 해금 연출과 안내

자동 초과 입금은 이미 구현되어 있으므로 시설 UI는 수동 입출금과 상태 확인을 담당한다.

### 5.2 소지 및 보관 한도 업그레이드

극야의 메타 업그레이드로 다음 기능을 추가한다.

- 정보 소지 한도 증가
- 시간 소지 한도 증가
- 정보 보관 한도 추가 및 증가
- 시간 보관 한도 추가 및 증가

업그레이드 비용과 단계는 추후 밸런스 설계에서 확정한다.

### 5.3 문명 정산 보상

문명이 끝났을 때 정보와 시간을 계산하는 전용 정산 시스템을 만든다.

추천 성과 지표:

- 도달한 최고 시대
- 해당 문명에서 누적 생산한 일반 자원
- 산업 시설 발전도
- 현대 및 미래 도달 여부
- 특별 목표 달성 여부

첫 버전은 복잡한 수식보다 구간식 보상을 사용한다.

```text
누적 생산 10,000 이상 → 정보 +1
누적 생산 100,000 이상 → 정보 +1
누적 생산 1,000,000 이상 → 정보 +1
현대 도달 → 정보 추가 보상
미래 또는 문명 완주 → 시간 보상
```

정산 과정에는 보상 미리보기와 최종 확인 UI를 둔다.

### 5.4 문명 전환 상태 머신

멸망, 극야, 깨달음, 여명, 새 문명 시작을 명시적인 상태로 관리한다.

```text
0 = 일반 플레이
1 = 멸망 발생
2 = 극야에서 정산 가능
3 = 깨달음 사용
4 = 여명에서 문명 선택 중
5 = 문명 전환 확정
```

목표 흐름:

> 멸망 → 극야 → 유산·정보·시간 정리 → 깨달음 → 여명 → 문명 선택 → 정산 및 초기화 → 새 문명

`common/disaster/do`에서는 멸망 연출과 정산 준비만 처리한다. 실제 초기화는 새 문명을 확정할 때만 실행한다.

### 5.5 초기화 함수 분리

현재의 전체 초기화 함수와 문명 전환용 초기화를 분리한다.

```text
reset/
├─ full.mcfunction
├─ civilization.mcfunction
└─ runtime.mcfunction
```

문명 전환 시 초기화할 항목:

- 일반 자원
- 현재 시대
- 일반 업그레이드
- 산업 시설 레벨과 가동 상태
- 문명별 스토리 상태
- 현재 작업 중인 생산 및 시설 타이머

유지할 항목:

- 정보·시간 아이템
- 정보·시간 보관량
- 메타 한도 업그레이드
- 영구 생산 보너스
- 문명 및 멸망 누적 기록
- 해금된 문명과 기록 보관소

### 5.6 근대 산업 시설

근대에 대형 산업 건물의 1층을 해금한다.

- 석탄을 연료로 소비한다.
- 일반 자원을 일정 주기마다 자동 생산한다.
- 자원별 생산 라인을 켜고 끌 수 있다.
- 생산 라인별 레벨, 생산량, 연료 소비량을 표시한다.
- 모든 생산 라인은 중앙 주기 함수에서 처리한다.

권장 첫 구현:

```text
생산 주기: 20틱 또는 100틱
석탄 부족: 활성 생산 라인 전체 정지
```

### 5.7 기존 resource_shop 개편

현재 `const.resource_shop`의 `1 → 2 → 4 → 8 → 16 → 32 → 64` 수급량 단계를 자동 생산 라인 출력으로 이전한다.

권장 데이터 구조:

```snbt
{
  id:"wood",
  levels:[
    {lvl:0,output:1,fuel:1,cost:[...]},
    {lvl:1,output:2,fuel:1,cost:[...]},
    {lvl:2,output:4,fuel:2,cost:[...]}
  ]
}
```

직접 채굴량과 산업 생산량은 서로 다른 함수에서 계산한다.

주의할 점:

- 현재 고대 진입 조건이 `material_shop` 레벨을 검사한다.
- `resource_shop`을 산업용으로 전환하기 전에 고대 진입 조건을 별도 발전 과제로 교체해야 한다.
- 기존 저장 데이터 호환을 위해 `#<resource>_lvl material_shop` 점수는 생산 라인 레벨로 재사용할 수 있다.

### 5.8 현대 입자가속기

현대에 산업 건물 2층을 해금하고 입자가속기를 활성화한다.

역할:

> 대량의 일반 자원 → 정보

- 자동 틱 생산보다 배치 제작 방식으로 시작한다.
- 비용을 모두 확인한 뒤 한 번에 차감하고 정보를 지급한다.
- 현대의 `#information unlock`은 정보 최초 획득이 아니라 정보 생산 시설 해금을 의미하도록 변경한다.

### 5.9 미래 타임머신

미래에 산업 건물 3층을 해금하고 타임머신을 활성화한다.

역할:

> 일반 자원 + 정보 → 시간

- 시간은 정보보다 훨씬 적게 생산한다.
- 미래의 `#time unlock`은 시간 최초 획득이 아니라 시간 생산 시설 해금을 의미하도록 변경한다.

### 5.10 엘리베이터 연동

현재 구현된 엘리베이터 단계를 그대로 사용한다.

```text
근대: 1층 산업 시설
현대: 엘리베이터 Lv. 1 및 2층 입자가속기
미래: 엘리베이터 Lv. 2 및 3층 타임머신
```

시대 진입 함수와 시설 해금 함수를 연결하고, 중복 실행되어도 문제가 없도록 해금 함수를 멱등적으로 작성한다.

### 5.11 레거시 드릴 제거

산업 시설이 자동 생산 역할을 맡으면 기존 드릴 시스템을 단계적으로 제거한다.

1. tick 호출 제거
2. 드릴 interaction 접근 차단
3. 드릴 UI 및 trigger 참조 제거
4. 드릴 레벨 초기화 코드 제거
5. `const.dimensions.overworld.drill` 제거
6. 기존 월드의 드릴 엔티티 정리 함수 제공
7. 호환 기간 후 레거시 함수 삭제

## 6. 권장 구현 순서

1. 실제 게임에서 현재 정보·시간 시스템 검증
2. 극야 정보·시간 보관소 UI 구현
3. 문명 정산 보상과 미리보기 구현
4. 문명 전환 상태 머신 구현
5. 문명 전환용 초기화 함수 분리
6. 고대 진입 조건에서 `material_shop` 의존 제거
7. 근대 산업 시설과 자동 생산 구현
8. `resource_shop`을 산업 생산 라인으로 개편
9. 현대 입자가속기 구현
10. 미래 타임머신 구현
11. 엘리베이터와 시대 해금 연결
12. 레거시 드릴 제거
13. 전체 경제 밸런스와 저장 데이터 호환 검증

## 7. 현재 시스템 사용 방법

정보 지급:

```mcfunction
scoreboard players set #material_add_value tmp 5
function meta/information/give
```

시간 지급:

```mcfunction
scoreboard players set #material_add_value tmp 2
function meta/time/give
```

현재 플레이어의 지갑과 보관소를 호환용 점수에 동기화:

```mcfunction
function meta/sync
```

개발 테스트:

```mcfunction
function test/meta
```

정보와 시간을 비용으로 사용하는 기존 `tmp.cost` 시스템은 그대로 사용할 수 있다.

```snbt
[
  {type:"information",amount:5},
  {type:"time",amount:1}
]
```

## 8. 설계상 남은 결정

다음 항목은 구현 전에 구체적인 수치를 확정해야 한다.

- 산업 시설의 생산 주기
- 각 생산 라인의 석탄 소비량
- 석탄 부족 시 라인 정지 정책
- 문명 초기화 시 유지할 일반 업그레이드의 범위
- 정보·시간 정산 공식
- 정보·시간 보관 한도
- 소지 및 보관 한도 업그레이드 비용
- 입자가속기 제작법과 정보 생산량
- 타임머신 제작법과 시간 생산량
- 멀티플레이에서 메타 자원을 전역 공유할지 플레이어별로 관리할지 여부
