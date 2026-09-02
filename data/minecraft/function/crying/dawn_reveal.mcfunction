# 여명 차원 우는 흑요석 공개
# 원자로와 세 증폭기의 스테인드글라스가 모두 지정 색상으로 바뀌면 중앙 상단에 보라색 유리와 우는 흑요석 디스플레이를 겹쳐 생성합니다.

execute in minecraft:dawn unless block 0 64 0 minecraft:pink_stained_glass run return 0
execute in minecraft:dawn unless block 0 65 0 minecraft:orange_stained_glass run return 0
execute in minecraft:dawn unless block 0 66 0 minecraft:lime_stained_glass run return 0
execute in minecraft:dawn unless block 0 67 0 minecraft:light_blue_stained_glass run return 0

# 실제 충돌/외곽은 보라색 색유리가 담당합니다.
execute in minecraft:dawn run setblock 0 68 0 minecraft:purple_stained_glass

# 기존 디스플레이도 완전한 한 블록 크기로 보정합니다.
execute in minecraft:dawn as @e[type=minecraft:block_display,tag=crying_dawn_display] run data merge entity @s {transformation:{translation:[0.0f,0.0f,0.0f],scale:[1.0f,1.0f,1.0f],left_rotation:[0.0f,0.0f,0.0f,1.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f]}}
execute in minecraft:dawn if entity @e[type=minecraft:block_display,tag=crying_dawn_display] run return 0

# 우는 흑요석을 정확히 1×1×1 블록 크기로 배치합니다.
execute in minecraft:dawn run summon minecraft:block_display 0.0 68.0 0.0 {block_state:{Name:"minecraft:crying_obsidian"},Tags:["crying_dawn_display"],transformation:{translation:[0.0f,0.0f,0.0f],scale:[1.0f,1.0f,1.0f],left_rotation:[0.0f,0.0f,0.0f,1.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f]}}
