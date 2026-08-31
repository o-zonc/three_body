# 여명 차원 중앙 구조물 상호작용
execute at @s run playsound ui.button.click weather @s ~ ~ ~ 1 2
execute unless entity @s[advancements={3_polarnight/89_crying_discovery=true}] run advancement grant @s only 3_polarnight/89_crying_discovery dawn_spear

# 우는 흑요석이 이미 공개된 뒤에는 더 이상 반응하지 않습니다.
execute in minecraft:dawn if entity @e[type=minecraft:block_display,tag=crying_dawn_display] run tellraw @s {text:"이제는 더 이상 반응하지 않는다...",color:"gray"}
execute in minecraft:dawn if entity @e[type=minecraft:block_display,tag=crying_dawn_display] run return 0

execute in minecraft:dawn unless block 0 67 0 minecraft:light_blue_stained_glass run tellraw @s "하양"
execute in minecraft:dawn if block 0 67 0 minecraft:light_blue_stained_glass run tellraw @s {text:"파랑",color:"aqua"}
execute in minecraft:dawn unless block 0 66 0 minecraft:lime_stained_glass run tellraw @s "하양"
execute in minecraft:dawn if block 0 66 0 minecraft:lime_stained_glass run tellraw @s {text:"초록",color:"green"}
execute in minecraft:dawn unless block 0 65 0 minecraft:orange_stained_glass run tellraw @s "하양"
execute in minecraft:dawn if block 0 65 0 minecraft:orange_stained_glass run tellraw @s {text:"주황",color:"gold"}
execute in minecraft:dawn unless block 0 64 0 minecraft:pink_stained_glass run tellraw @s "하양\n"
execute in minecraft:dawn if block 0 64 0 minecraft:pink_stained_glass run tellraw @s {text:"빨강\n",color:"red"}

# 세 증폭기가 아직 모두 완성되지 않았다면 수상한 구조물이라는 힌트만 보여줍니다.
execute in minecraft:dawn unless block 0 65 0 minecraft:orange_stained_glass run tellraw @s {text:"이 구조물은 뭘까?",color:"gray"}
execute in minecraft:dawn unless block 0 65 0 minecraft:orange_stained_glass run return 0
execute in minecraft:dawn unless block 0 66 0 minecraft:lime_stained_glass run tellraw @s {text:"이 구조물은 뭘까?",color:"gray"}
execute in minecraft:dawn unless block 0 66 0 minecraft:lime_stained_glass run return 0
execute in minecraft:dawn unless block 0 67 0 minecraft:light_blue_stained_glass run tellraw @s {text:"이 구조물은 뭘까?",color:"gray"}
execute in minecraft:dawn unless block 0 67 0 minecraft:light_blue_stained_glass run return 0

# 모든 증폭기가 완성되면 우는 흑요석은 자동으로 공개됩니다.
tellraw @s {text:"세 증폭기의 힘이 중앙에 모여 있다.",color:"light_purple"}
