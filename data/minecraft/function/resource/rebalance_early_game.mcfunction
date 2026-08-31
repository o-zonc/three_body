# 초반 진행 완화용 자원 밸런스 오버라이드
# const_def 이후 호출되어 초반 재생 대기와 업그레이드 비용을 조정한다.
# 자원 해금 비용은 변경하지 않으며, 오버월드 광산 자원 7종의 초기 재생 쿨타임은 최대 500틱으로 제한한다.

# 나무: 기본 40틱 -> 30틱, 이후 단계도 초반 체감 위주로 약 25~33% 단축.
data modify storage data const.resource.wood.regen[{lvl:0}].value set value 30
data modify storage data const.resource.wood.regen[{lvl:1}].value set value 15
data modify storage data const.resource.wood.regen[{lvl:2}].value set value 6
data modify storage data const.resource.wood.regen[{lvl:3}].value set value 2
data modify storage data const.resource.wood.regen[{lvl:0}].cost set value [{type:"stone",amount:2}]
data modify storage data const.resource.wood.regen[{lvl:1}].cost set value [{type:"stone",amount:4}]
data modify storage data const.resource.wood.regen[{lvl:2}].cost set value [{type:"stone",amount:12}]
data modify storage data const.resource.wood.regen[{lvl:3}].cost set value [{type:"stone",amount:60}]

# 돌: 시간제가 아니라 나무 채취 횟수 기반. 초기 3회 -> 2회, 다음 단계는 1회로 단축.
# 후반의 수급량 증가 단계(레벨 4~5)는 기존 경제를 보존한다.
data modify storage data const.resource.stone.regen[{lvl:0}].value set value 2
data modify storage data const.resource.stone.regen[{lvl:1}].value set value 1
data modify storage data const.resource.stone.regen[{lvl:0}].cost set value [{type:"stone",amount:240}]
data modify storage data const.resource.stone.regen[{lvl:1}].cost set value [{type:"wood",amount:6000},{type:"stone",amount:3000}]

# 석탄: 기본 5초 -> 3초. 초반 단계 비용은 크게 낮추고 후반 단계는 완만하게 조정.
data modify storage data const.resource.coal.regen[{lvl:0}].value set value 60
data modify storage data const.resource.coal.regen[{lvl:1}].value set value 36
data modify storage data const.resource.coal.regen[{lvl:2}].value set value 16
data modify storage data const.resource.coal.regen[{lvl:3}].value set value 4
data modify storage data const.resource.coal.regen[{lvl:0}].cost set value [{type:"copper",amount:12}]
data modify storage data const.resource.coal.regen[{lvl:1}].cost set value [{type:"iron",amount:30}]
data modify storage data const.resource.coal.regen[{lvl:2}].cost set value [{type:"gold",amount:75}]
data modify storage data const.resource.coal.regen[{lvl:3}].cost set value [{type:"diamond",amount:20}]

# 구리: 기본 8초 -> 5초.
data modify storage data const.resource.copper.regen[{lvl:0}].value set value 100
data modify storage data const.resource.copper.regen[{lvl:1}].value set value 60
data modify storage data const.resource.copper.regen[{lvl:2}].value set value 30
data modify storage data const.resource.copper.regen[{lvl:3}].value set value 10
data modify storage data const.resource.copper.regen[{lvl:0}].cost set value [{type:"stone",amount:60}]
data modify storage data const.resource.copper.regen[{lvl:1}].cost set value [{type:"coal",amount:60}]
data modify storage data const.resource.copper.regen[{lvl:2}].cost set value [{type:"iron",amount:100}]
data modify storage data const.resource.copper.regen[{lvl:3}].cost set value [{type:"gold",amount:75}]

# 철: 기본 15초 -> 9초. 철 진입 직후의 첫 두 업그레이드를 특히 접근하기 쉽게 조정.
data modify storage data const.resource.iron.regen[{lvl:0}].value set value 180
data modify storage data const.resource.iron.regen[{lvl:1}].value set value 110
data modify storage data const.resource.iron.regen[{lvl:2}].value set value 45
data modify storage data const.resource.iron.regen[{lvl:3}].value set value 15
data modify storage data const.resource.iron.regen[{lvl:0}].cost set value [{type:"copper",amount:120}]
data modify storage data const.resource.iron.regen[{lvl:1}].cost set value [{type:"coal",amount:180}]
data modify storage data const.resource.iron.regen[{lvl:2}].cost set value [{type:"gold",amount:175}]
data modify storage data const.resource.iron.regen[{lvl:3}].cost set value [{type:"diamond",amount:40}]

# 오버월드 광산 자원 7종(석탄/구리/철/금/다이아몬드/에메랄드/청금석)의 초기 쿨타임 상한은 500틱.
# 석탄/구리/철은 위에서 이미 500틱 미만으로 조정했고 금/다이아몬드는 기존값을 유지한다.
# 에메랄드:청금석은 기존 700:600 = 7:6 비율을 유지해 490:420틱으로 함께 30% 단축한다.
data modify storage data const.resource.gold.regen[{lvl:0}].value set value 100
data modify storage data const.resource.diamond.regen[{lvl:0}].value set value 160
data modify storage data const.resource.emerald.regen[{lvl:0}].value set value 490
data modify storage data const.resource.lapis.regen[{lvl:0}].value set value 420
