# spear의 네 진행 단계를 초기 무색 유리 상태로 복원한다.
execute in minecraft:dawn run setblock 0 64 0 minecraft:glass
execute in minecraft:dawn run setblock 0 65 0 minecraft:glass
execute in minecraft:dawn run setblock 0 66 0 minecraft:glass
execute in minecraft:dawn run setblock 0 67 0 minecraft:glass
execute in minecraft:dawn run setblock 0 68 0 minecraft:air

# 현재 및 과거 버전의 우는 흑요석 디스플레이를 모두 제거한다.
execute in minecraft:dawn run kill @e[type=minecraft:block_display,tag=crying_dawn_display]
execute in minecraft:dawn positioned 0 68 0 run kill @e[type=minecraft:block_display,distance=..2,nbt={block_state:{Name:"minecraft:crying_obsidian"}}]

scoreboard players set #dawn_reset_forceload_owned var 0
scoreboard players set #dawn_reset_pending var 0
