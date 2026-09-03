# 천공의 제단(0 -59 0) 근처에서만 사용할 수 있다.
execute unless entity @a[tag=accelerator_experiment_running] unless dimension minecraft:overworld run title @s actionbar {"text":"천공의 제단 곁에서만 투자금을 수령할 수 있습니다.","color":"red","italic":true}
execute unless dimension minecraft:overworld run return 0
execute unless entity @a[tag=accelerator_experiment_running] positioned 0 -59 0 unless entity @s[distance=..3.0] run title @s actionbar {"text":"천공의 제단 곁에서만 투자금을 수령할 수 있습니다.","color":"red","italic":true}
execute positioned 0 -59 0 unless entity @s[distance=..3.0] run return 0

# 금속 자원 지급
scoreboard players set #material_add_value tmp 400
function resource/add_material/copper
scoreboard players set #material_add_value tmp 300
function resource/add_material/iron
scoreboard players set #material_add_value tmp 100
function resource/add_material/gold

# 보석 자원 지급
scoreboard players set #material_add_value tmp 100
function resource/add_material/emerald
scoreboard players set #material_add_value tmp 200
function resource/add_material/lapis
scoreboard players set #material_add_value tmp 50
function resource/add_material/diamond

# 일회용 아이템 소비
clear @s minecraft:brick[minecraft:custom_data~{investment_series_a:1b}] 1

playsound minecraft:entity.player.levelup master @s ~ ~ ~ 1.0 1.25
particle minecraft:end_rod ~ ~1 ~ 0.7 1.0 0.7 0.05 60 force @s
particle minecraft:firework ~ ~1 ~ 0.4 0.7 0.4 0.08 35 force @s
title @s title {"text":"시리즈 A 투자 유치","color":"gold","bold":true}
title @s subtitle ["",{"text":"구리 +400","color":"#C87941"},{"text":" · ","color":"gray"},{"text":"철 +300","color":"white"},{"text":" · ","color":"gray"},{"text":"금 +100","color":"gold"},{"text":" · ","color":"gray"},{"text":"에메랄드 +100","color":"green"},{"text":" · ","color":"gray"},{"text":"청금석 +200","color":"blue"},{"text":" · ","color":"gray"},{"text":"다이아몬드 +50","color":"aqua"}]
