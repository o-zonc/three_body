# 여명 차원 우는 흑요석 이벤트 전체 초기화
scoreboard players set #crying_dawn var 0
function crying/update_count
scoreboard players set #GLOBAL dawn_reactor_purchased 0
scoreboard players set #dawn_overworld_amp meta 0
scoreboard players set #dawn_dried_amp meta 0
scoreboard players set #dawn_frozen_amp meta 0

execute in minecraft:dawn run setblock 0 64 0 minecraft:white_stained_glass
execute in minecraft:dawn run setblock 0 65 0 minecraft:white_stained_glass
execute in minecraft:dawn run setblock 0 66 0 minecraft:white_stained_glass
execute in minecraft:dawn run setblock 0 67 0 minecraft:white_stained_glass
execute in minecraft:dawn run setblock 0 68 0 minecraft:air
execute in minecraft:dawn run kill @e[type=minecraft:block_display,tag=crying_dawn_display]
# 태그가 누락된 과거 우는 흑요석 디스플레이도 중앙 좌표를 기준으로 제거합니다.
execute in minecraft:dawn positioned 0 68 0 run kill @e[type=minecraft:block_display,distance=..2,nbt={block_state:{Name:"minecraft:crying_obsidian"}}]
