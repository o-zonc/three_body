# 여명 차원 우는 흑요석 공개
# 네 개의 스테인드글라스가 모두 지정 색상으로 바뀌면 중앙 상단에 우는 흑요석 블록 디스플레이를 생성합니다.

execute in minecraft:dawn unless block 0 64 0 minecraft:pink_stained_glass run return 0
execute in minecraft:dawn unless block 0 65 0 minecraft:orange_stained_glass run return 0
execute in minecraft:dawn unless block 0 66 0 minecraft:lime_stained_glass run return 0
execute in minecraft:dawn unless block 0 67 0 minecraft:light_blue_stained_glass run return 0

# 중복 생성 방지
execute in minecraft:dawn if entity @e[type=minecraft:block_display,tag=crying_dawn_display] run return 0

execute in minecraft:dawn run summon minecraft:block_display 0.5 68 0.5 {block_state:{Name:"minecraft:crying_obsidian"},Tags:["crying_dawn_display"]}
