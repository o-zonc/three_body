# load
# 상수 선언
# 기본 상수 본문을 먼저 구성한 뒤, 이 파일에서 밸런스 상수를 직접 확정한다.
function minecraft:const_def/base

# -----------------------------------------------------------------------------
# 초반 자원 밸런스 상수
# -----------------------------------------------------------------------------
# 자원 해금 비용은 변경하지 않으며, 오버월드 광산 자원 7종의 초기 재생 쿨타임은 최대 500틱으로 제한한다.

# 나무
data modify storage data const.resource.wood.regen[{lvl:0}].value set value 30
data modify storage data const.resource.wood.regen[{lvl:1}].value set value 15
data modify storage data const.resource.wood.regen[{lvl:2}].value set value 6
data modify storage data const.resource.wood.regen[{lvl:3}].value set value 2
data modify storage data const.resource.wood.regen[{lvl:0}].cost set value [{type:"stone",amount:2}]
data modify storage data const.resource.wood.regen[{lvl:1}].cost set value [{type:"stone",amount:4}]
data modify storage data const.resource.wood.regen[{lvl:2}].cost set value [{type:"stone",amount:12}]
data modify storage data const.resource.wood.regen[{lvl:3}].cost set value [{type:"stone",amount:60}]

# 돌
data modify storage data const.resource.stone.regen[{lvl:0}].value set value 2
data modify storage data const.resource.stone.regen[{lvl:1}].value set value 1
data modify storage data const.resource.stone.regen[{lvl:0}].cost set value [{type:"stone",amount:240}]
data modify storage data const.resource.stone.regen[{lvl:1}].cost set value [{type:"wood",amount:6000},{type:"stone",amount:3000}]

# 석탄
data modify storage data const.resource.coal.regen[{lvl:0}].value set value 60
data modify storage data const.resource.coal.regen[{lvl:1}].value set value 36
data modify storage data const.resource.coal.regen[{lvl:2}].value set value 16
data modify storage data const.resource.coal.regen[{lvl:3}].value set value 4
data modify storage data const.resource.coal.regen[{lvl:0}].cost set value [{type:"copper",amount:12}]
data modify storage data const.resource.coal.regen[{lvl:1}].cost set value [{type:"iron",amount:30}]
data modify storage data const.resource.coal.regen[{lvl:2}].cost set value [{type:"gold",amount:75}]
data modify storage data const.resource.coal.regen[{lvl:3}].cost set value [{type:"diamond",amount:20}]

# 구리
data modify storage data const.resource.copper.regen[{lvl:0}].value set value 100
data modify storage data const.resource.copper.regen[{lvl:1}].value set value 60
data modify storage data const.resource.copper.regen[{lvl:2}].value set value 30
data modify storage data const.resource.copper.regen[{lvl:3}].value set value 10
data modify storage data const.resource.copper.regen[{lvl:0}].cost set value [{type:"stone",amount:60}]
data modify storage data const.resource.copper.regen[{lvl:1}].cost set value [{type:"coal",amount:60}]
data modify storage data const.resource.copper.regen[{lvl:2}].cost set value [{type:"iron",amount:100}]
data modify storage data const.resource.copper.regen[{lvl:3}].cost set value [{type:"gold",amount:75}]

# 철
data modify storage data const.resource.iron.regen[{lvl:0}].value set value 180
data modify storage data const.resource.iron.regen[{lvl:1}].value set value 110
data modify storage data const.resource.iron.regen[{lvl:2}].value set value 45
data modify storage data const.resource.iron.regen[{lvl:3}].value set value 15
data modify storage data const.resource.iron.regen[{lvl:0}].cost set value [{type:"copper",amount:120}]
data modify storage data const.resource.iron.regen[{lvl:1}].cost set value [{type:"coal",amount:180}]
data modify storage data const.resource.iron.regen[{lvl:2}].cost set value [{type:"gold",amount:175}]
data modify storage data const.resource.iron.regen[{lvl:3}].cost set value [{type:"diamond",amount:40}]

# 오버월드 광산 자원 초기 쿨타임 상한 보정
data modify storage data const.resource.gold.regen[{lvl:0}].value set value 100
data modify storage data const.resource.diamond.regen[{lvl:0}].value set value 160
data modify storage data const.resource.emerald.regen[{lvl:0}].value set value 490
data modify storage data const.resource.lapis.regen[{lvl:0}].value set value 420

# 자원 상점 2배 업그레이드 비용
# 자기 자원 부담을 조금 낮추고, 철기 이후 늘어난 나무 수급량을 보조 비용으로 사용한다.
data modify storage data const.resource_shop[{id:"copper"}].levels[{lvl:0}].cost set value [{type:"copper",amount:50},{type:"wood",amount:300}]
data modify storage data const.resource_shop[{id:"iron"}].levels[{lvl:0}].cost set value [{type:"iron",amount:30},{type:"wood",amount:300}]

# -----------------------------------------------------------------------------
# 초반 채굴 도구 밸런스 상수
# -----------------------------------------------------------------------------
# 돌/석탄은 같은 채굴 시간, 구리/철은 같은 채굴 시간이 되도록 맞춘다.
# 노랑/파랑은 숨김용 append(Lv6~11) 및 본문 규칙(Lv12+)에 별도로 존재하며 이번 변경 대상 자원과 중복되지 않는다.

# Lv4 돌 곡괭이: 돌/석탄 3초, 구리 6초
data modify storage data const.tool[{lvl:4}].components.tool.rules[{blocks:"stone"}].speed set value 0.75f
data modify storage data const.tool[{lvl:4}].components.tool.rules[{blocks:"coal_ore"}].speed set value 1.5f
data modify storage data const.tool[{lvl:4}].components.tool.rules[{blocks:"copper_ore"}].speed set value 0.75f
data modify storage data const.tool[{lvl:4}].components.lore set value ["§4도구 - 파괴","","§6* §e나무§7를 파괴하기까지 §f1§7초 소요됨","§6* §7돌§7, §8석탄§7을 파괴하기까지 §f3§7초 소요됨","§6* §6구리§7를 파괴하기까지 §f6§7초 소요됨","§6* §d특수 자원§7을 파괴하기까지 §f5§7초 소요됨"]

# Lv5 좋은 돌 곡괭이: 돌/석탄 2초, 구리 5초
data modify storage data const.tool[{lvl:5}].components.tool.rules[{blocks:"stone"}].speed set value 1.125f
data modify storage data const.tool[{lvl:5}].components.tool.rules[{blocks:"coal_ore"}].speed set value 2.25f
data modify storage data const.tool[{lvl:5}].components.tool.rules[{blocks:"copper_ore"}].speed set value 0.9f
data modify storage data const.tool[{lvl:5}].components.lore set value ["§4도구 - 파괴","","§6* §e나무§7를 파괴하기까지 §f1§7초 소요됨","§6* §7돌§7, §8석탄§7을 파괴하기까지 §f2§7초 소요됨","§6* §6구리§7를 파괴하기까지 §f5§7초 소요됨","§6* §d특수 자원§7을 파괴하기까지 §f4§7초 소요됨"]

# Lv6 구리 곡괭이: 돌/석탄 2초, 구리/철 4초
data modify storage data const.tool[{lvl:6}].components.tool.rules[{blocks:"stone"}].speed set value 1.125f
data modify storage data const.tool[{lvl:6}].components.tool.rules[{blocks:"coal_ore"}].speed set value 2.25f
data modify storage data const.tool[{lvl:6}].components.tool.rules[{blocks:"copper_ore"}].speed set value 1.125f
data modify storage data const.tool[{lvl:6}].components.tool.rules[{blocks:"iron_ore"}].speed set value 1.125f
data modify storage data const.tool[{lvl:6}].components.lore set value ["§4도구 - 파괴","","§6* §e나무§7 즉시 파괴 가능","§6* §7돌§7, §8석탄§7을 파괴하기까지 §f2§7초 소요됨","§6* §6구리§7, §f철§7을 파괴하기까지 §f4§7초 소요됨",["§6* ",{text:"금",color:"gold",shadow_color:-7710208,italic:false},"§7, ",{text:"다이아몬드",color:"aqua",shadow_color:-16741750,italic:false},"§7를 파괴하기까지 §f6.4§7초 소요됨"],"§6* §a에메랄드§7를 파괴하기까지 §f8§7초 소요됨","§6* §d특수 자원§7을 파괴하기까지 §f3.2§7초 소요됨"]

# Lv7 좋은 구리 곡괭이: 돌/석탄 1초, 구리/철 3초
data modify storage data const.tool[{lvl:7}].components.tool.rules[{blocks:"stone"}].speed set value 2.25f
data modify storage data const.tool[{lvl:7}].components.tool.rules[{blocks:"coal_ore"}].speed set value 4.5f
data modify storage data const.tool[{lvl:7}].components.tool.rules[{blocks:"copper_ore"}].speed set value 1.5f
data modify storage data const.tool[{lvl:7}].components.tool.rules[{blocks:"iron_ore"}].speed set value 1.5f
data modify storage data const.tool[{lvl:7}].components.lore set value ["§4도구 - 파괴","","§6* §e나무§7 즉시 파괴 가능","§6* §7돌§7, §8석탄§7을 파괴하기까지 §f1§7초 소요됨","§6* §6구리§7, §f철§7을 파괴하기까지 §f3§7초 소요됨",["§6* ",{text:"금",color:"gold",shadow_color:-7710208,italic:false},"§7, ",{text:"다이아몬드",color:"aqua",shadow_color:-16741750,italic:false},"§7를 파괴하기까지 §f3.2§7초 소요됨"],"§6* §a에메랄드§7를 파괴하기까지 §f7§7초 소요됨","§6* §9청금석§7을 파괴하기까지 §f8§7초 소요됨","§6* §d특수 자원§7을 파괴하기까지 §f2.4§7초 소요됨"]

# Lv8 철 곡괭이: 돌/석탄 1초, 구리/철 2초
data modify storage data const.tool[{lvl:8}].components.tool.rules[{blocks:"stone"}].speed set value 2.25f
data modify storage data const.tool[{lvl:8}].components.tool.rules[{blocks:"coal_ore"}].speed set value 4.5f
data modify storage data const.tool[{lvl:8}].components.tool.rules[{blocks:"copper_ore"}].speed set value 2.25f
data modify storage data const.tool[{lvl:8}].components.tool.rules[{blocks:"iron_ore"}].speed set value 2.25f
data modify storage data const.tool[{lvl:8}].components.lore set value ["§4도구 - 파괴","","§6* §e나무§7 즉시 파괴 가능","§6* §7돌§7, §8석탄§7을 파괴하기까지 §f1§7초 소요됨","§6* §6구리§7, §f철§7을 파괴하기까지 §f2§7초 소요됨",["§6* ",{text:"금",color:"gold",shadow_color:-7710208,italic:false},"§7, ",{text:"다이아몬드",color:"aqua",shadow_color:-16741750,italic:false},"§7를 파괴하기까지 §f3.2§7초 소요됨"],"§6* §a에메랄드§7를 파괴하기까지 §f6§7초 소요됨","§6* §9청금석§7을 파괴하기까지 §f7§7초 소요됨","§6* §d특수 자원§7을 파괴하기까지 §f2.4§7초 소요됨"]

# Lv9 좋은 철 곡괭이: 돌/석탄 즉시, 구리/철 2초
data modify storage data const.tool[{lvl:9}].components.tool.rules[{blocks:"stone"}].speed set value 45.0f
data modify storage data const.tool[{lvl:9}].components.tool.rules[{blocks:"coal_ore"}].speed set value 90.0f
data modify storage data const.tool[{lvl:9}].components.tool.rules[{blocks:"copper_ore"}].speed set value 2.25f
data modify storage data const.tool[{lvl:9}].components.tool.rules[{blocks:"iron_ore"}].speed set value 2.25f
data modify storage data const.tool[{lvl:9}].components.lore set value ["§4도구 - 파괴","","§6* §e나무§7, §7돌§7, §8석탄§7 즉시 파괴 가능","§6* §6구리§7, §f철§7을 파괴하기까지 §f2§7초 소요됨",["§6* ",{text:"금",color:"gold",shadow_color:-7710208,italic:false},"§7을 파괴하기까지 §f2.4§7초 소요됨"],["§6* ",{text:"다이아몬드",color:"aqua",shadow_color:-16741750,italic:false},"§7를 파괴하기까지 §f3.2§7초 소요됨"],"§6* §a에메랄드§7를 파괴하기까지 §f4§7초 소요됨","§6* §9청금석§7을 파괴하기까지 §f6§7초 소요됨","§6* §d특수 자원§7을 파괴하기까지 §f1.6§7초 소요됨"]

# Lv10 훌륭한 철 곡괭이: 돌/석탄 즉시, 구리/철 2초
data modify storage data const.tool[{lvl:10}].components.tool.rules[{blocks:"stone"}].speed set value 45.0f
data modify storage data const.tool[{lvl:10}].components.tool.rules[{blocks:"coal_ore"}].speed set value 90.0f
data modify storage data const.tool[{lvl:10}].components.tool.rules[{blocks:"copper_ore"}].speed set value 2.25f
data modify storage data const.tool[{lvl:10}].components.tool.rules[{blocks:"iron_ore"}].speed set value 2.25f
data modify storage data const.tool[{lvl:10}].components.lore set value ["§4도구 - 파괴","","§6* §e나무§7, §7돌§7, §8석탄§7 즉시 파괴 가능","§6* §6구리§7, §f철§7을 파괴하기까지 §f2§7초 소요됨",["§6* ",{text:"금",color:"gold",shadow_color:-7710208,italic:false},"§7을 파괴하기까지 §f1.6§7초 소요됨"],["§6* ",{text:"다이아몬드",color:"aqua",shadow_color:-16741750,italic:false},"§7를 파괴하기까지 §f2.4§7초 소요됨"],"§6* §a에메랄드§7를 파괴하기까지 §f3§7초 소요됨","§6* §9청금석§7을 파괴하기까지 §f4§7초 소요됨","§6* §d특수 자원§7을 파괴하기까지 §f1.6§7초 소요됨"]

# Lv11 신성 철 곡괭이: 돌/석탄 즉시, 구리/철 1초
data modify storage data const.tool[{lvl:11}].components.tool.rules[{blocks:"stone"}].speed set value 45.0f
data modify storage data const.tool[{lvl:11}].components.tool.rules[{blocks:"coal_ore"}].speed set value 90.0f
data modify storage data const.tool[{lvl:11}].components.tool.rules[{blocks:"copper_ore"}].speed set value 4.5f
data modify storage data const.tool[{lvl:11}].components.tool.rules[{blocks:"iron_ore"}].speed set value 4.5f
data modify storage data const.tool[{lvl:11}].components.lore set value ["§4도구 - 파괴","","§6* §e나무§7, §7돌§7, §8석탄§7 즉시 파괴 가능","§6* §6구리§7, §f철§7을 파괴하기까지 §f1§7초 소요됨",["§6* ",{text:"금",color:"gold",shadow_color:-7710208,italic:false},"§7, ",{text:"다이아몬드",color:"aqua",shadow_color:-16741750,italic:false},"§7를 파괴하기까지 §f1.6§7초 소요됨"],"§6* §a에메랄드§7를 파괴하기까지 §f2§7초 소요됨","§6* §9청금석§7을 파괴하기까지 §f3§7초 소요됨","§6* §d특수 자원§7을 파괴하기까지 §f0.8§7초 소요됨"]

# Lv12 수동 드릴: 돌/석탄/구리/철 즉시
data modify storage data const.tool[{lvl:12}].components.tool.rules[{blocks:"stone"}].speed set value 45.0f
data modify storage data const.tool[{lvl:12}].components.tool.rules[{blocks:"coal_ore"}].speed set value 90.0f
data modify storage data const.tool[{lvl:12}].components.tool.rules[{blocks:"copper_ore"}].speed set value 90.0f
data modify storage data const.tool[{lvl:12}].components.tool.rules[{blocks:"iron_ore"}].speed set value 90.0f
data modify storage data const.tool[{lvl:12}].components.lore set value ["§4도구 - 파괴","","§6* §e나무§7, §7돌§7, §8석탄§7, §6구리§7, §f철§7 즉시 파괴 가능",["§6* ",{text:"금",color:"gold",shadow_color:-7710208,italic:false},"§7, ",{text:"다이아몬드",color:"aqua",shadow_color:-16741750,italic:false},"§7를 파괴하기까지 §f0.8§7초 소요됨"],{text:"도구가 보석을 채굴하기에는 섬세하지 못한 것 같다...",color:"dark_gray",italic:true},"§6* §8외계 자원§7을 파괴하기까지 §f8§7초 소요됨"]

# /reload 직후 기존 도구도 새 상수/툴팁으로 교체되도록 한다.
scoreboard players set #tool_created_lvl var -1
