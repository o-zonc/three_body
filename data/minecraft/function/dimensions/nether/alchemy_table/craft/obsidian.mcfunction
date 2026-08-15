data modify storage data tmp.cost set value [{type:"wood",amount:800},{type:"stone",amount:400}]
execute store result score #alchemy_cost_check tmp run function resource/check_cost
execute unless score #alchemy_cost_check tmp matches 1 run return 0

scoreboard players remove #wood material 800
scoreboard players remove #stone material 400
scoreboard players set #material_add_value tmp 5
function resource/add_material/obsidian
function resource/limit_materials

title @s actionbar "§a차원 응고로§7: 흑요석 §f1§7개 합성"
execute at @s run playsound minecraft:block.respawn_anchor.charge weather @s ~ ~ ~ 0.7 1.0
return 1