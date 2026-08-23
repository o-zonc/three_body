# 여명 차원 중앙 구조물 상호작용
# 우는 흑요석이 이미 공개된 뒤에는 더 이상 반응하지 않습니다.
execute in minecraft:dawn if entity @e[type=minecraft:block_display,tag=crying_dawn_display] run return 0

# 네 장치가 아직 모두 완성되지 않았다면 수상한 구조물이라는 힌트만 보여줍니다.
execute in minecraft:dawn unless block 0 64 0 minecraft:pink_stained_glass run tellraw @s {text:"이 구조물은 뭘까?",color:"gray",italic:true}
execute in minecraft:dawn unless block 0 64 0 minecraft:pink_stained_glass run return 0
execute in minecraft:dawn unless block 0 65 0 minecraft:orange_stained_glass run tellraw @s {text:"이 구조물은 뭘까?",color:"gray",italic:true}
execute in minecraft:dawn unless block 0 65 0 minecraft:orange_stained_glass run return 0
execute in minecraft:dawn unless block 0 66 0 minecraft:lime_stained_glass run tellraw @s {text:"이 구조물은 뭘까?",color:"gray",italic:true}
execute in minecraft:dawn unless block 0 66 0 minecraft:lime_stained_glass run return 0
execute in minecraft:dawn unless block 0 67 0 minecraft:light_blue_stained_glass run tellraw @s {text:"이 구조물은 뭘까?",color:"gray",italic:true}
execute in minecraft:dawn unless block 0 67 0 minecraft:light_blue_stained_glass run return 0

# 모든 색이 들어온 뒤 처음 상호작용하면 우는 흑요석이 모습을 드러냅니다.
tellraw @s {text:"어라?",color:"light_purple",italic:true}
execute at @s run playsound minecraft:block.amethyst_block.chime master @s ~ ~ ~ 1 0.7
execute in minecraft:dawn positioned 0.5 68 0.5 run particle minecraft:end_rod ~ ~ ~ 0.35 0.35 0.35 0.02 24 normal
execute in minecraft:dawn positioned 0.5 68 0.5 run particle minecraft:reverse_portal ~ ~ ~ 0.3 0.3 0.3 0.03 20 normal
function crying/dawn_reveal
execute at @s run playsound minecraft:entity.enderman.teleport master @s ~ ~ ~ 0.8 1.4
