# 여명 차원 중앙 구조물 상호작용
execute at @s run playsound ui.button.click weather @s ~ ~ ~ 1 2
execute unless entity @s[advancements={3_polarnight/89_crying_discovery=true}] run advancement grant @s only 3_polarnight/89_crying_discovery dawn_spear

# 우는 흑요석이 이미 공개된 뒤에는 더 이상 반응하지 않는다.
execute in minecraft:dawn as @e[type=minecraft:block_display,tag=crying_dawn_display] run data merge entity @s {transformation:{translation:[0.0f,0.0f,0.0f],scale:[1.0f,1.0f,1.0f],left_rotation:[0.0f,0.0f,0.0f,1.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f]}}
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

# 원자로와 세 증폭기가 아직 모두 완성되지 않았다면 수상한 구조물이라는 힌트만 보여준다.
execute in minecraft:dawn unless block 0 64 0 minecraft:pink_stained_glass run tellraw @s {text:"이 구조물은 뭘까?",color:"gray"}
execute in minecraft:dawn unless block 0 64 0 minecraft:pink_stained_glass run return 0
execute in minecraft:dawn unless block 0 65 0 minecraft:orange_stained_glass run tellraw @s {text:"이 구조물은 뭘까?",color:"gray"}
execute in minecraft:dawn unless block 0 65 0 minecraft:orange_stained_glass run return 0
execute in minecraft:dawn unless block 0 66 0 minecraft:lime_stained_glass run tellraw @s {text:"이 구조물은 뭘까?",color:"gray"}
execute in minecraft:dawn unless block 0 66 0 minecraft:lime_stained_glass run return 0
execute in minecraft:dawn unless block 0 67 0 minecraft:light_blue_stained_glass run tellraw @s {text:"이 구조물은 뭘까?",color:"gray"}
execute in minecraft:dawn unless block 0 67 0 minecraft:light_blue_stained_glass run return 0

# 네 빛이 모두 켜진 뒤 창을 다시 작동시키면 우는 흑요석이 공개된다.
tellraw @s {text:"어라?",color:"light_purple"}
execute at @s run playsound minecraft:block.amethyst_block.chime master @s ~ ~ ~ 1 0.7
execute in minecraft:dawn positioned 0.5 68.5 0.5 run particle minecraft:end_rod ~ ~ ~ 0.6 0.6 0.6 0.06 80 force @s
execute in minecraft:dawn positioned 0.5 68.5 0.5 run particle minecraft:reverse_portal ~ ~ ~ 0.55 0.55 0.55 0.08 60 force @s
execute in minecraft:dawn positioned 0.5 68.5 0.5 run particle minecraft:electric_spark ~ ~ ~ 0.45 0.45 0.45 0.12 40 force @s
function crying/dawn_reveal
execute at @s run playsound minecraft:entity.enderman.teleport master @s ~ ~ ~ 0.8 1.4
return 1
