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
