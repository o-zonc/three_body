# 천공의 제단(0 -59 0) 근처에서만 사용할 수 있다.
execute unless dimension minecraft:overworld run title @s actionbar {"text":"천공의 제단 곁에서만 하늘의 은총을 받을 수 있습니다.","color":"red","italic":true}
execute unless dimension minecraft:overworld run return 0
execute positioned 0 -59 0 unless entity @s[distance=..3.0] run title @s actionbar {"text":"천공의 제단 곁에서만 하늘의 은총을 받을 수 있습니다.","color":"red","italic":true}
execute positioned 0 -59 0 unless entity @s[distance=..3.0] run return 0

# 보상 지급
scoreboard players set #material_add_value tmp 100
function resource/add_material/wood
scoreboard players set #material_add_value tmp 100
function resource/add_material/stone
scoreboard players set #material_add_value tmp 50
function resource/add_material/coal
scoreboard players set #material_add_value tmp 50
function resource/add_material/copper

# 일회용 아이템 소비
clear @s minecraft:paper[minecraft:custom_data~{heavenly_grace:1b}] 1

playsound minecraft:entity.player.levelup master @s ~ ~ ~ 1.0 1.25
particle minecraft:end_rod ~ ~1 ~ 0.7 1.0 0.7 0.05 60 force @s
particle minecraft:firework ~ ~1 ~ 0.4 0.7 0.4 0.08 35 force @s
title @s title {"text":"하늘의 은총","color":"gold","bold":true}
title @s subtitle {"text":"나무 +100 · 돌 +100 · 석탄 +50 · 구리 +50","color":"yellow"}
