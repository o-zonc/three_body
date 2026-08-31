# 초반 채굴 체감 개선용 도구 상수 오버라이드
# const_def 이후 호출되어 실제 const.tool의 채굴 속도와 툴팁을 함께 정리한다.
# 돌/석탄은 동일 채굴 시간, 구리/철은 동일 채굴 시간이 되도록 맞춘다.
# 돌의 경도는 석탄의 절반이므로 같은 시간 기준 석탄 speed는 돌 speed의 2배가 된다.

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

# /reload 직후 기존 도구도 다음 tick에 새 상수/툴팁으로 교체되도록 한다.
scoreboard players set #tool_created_lvl var -1
