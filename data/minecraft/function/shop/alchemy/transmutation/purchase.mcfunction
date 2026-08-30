# Macro args: source, source_name, source_amount, target, target_name, target_color, cooldown, lapis_amount
execute unless score #alchemy_workshop unlock matches 1 run return 0
execute unless score #level alchemy_workshop matches 1.. run title @s actionbar {text:"연금술 공방 Lv. 1이 필요합니다.",color:"red",italic:true}
execute unless score #level alchemy_workshop matches 1.. run return 0

$execute if score $(cooldown) var matches 1.. run title @s actionbar [{text:"",italic:true},{text:"다시 연성하려면 ",color:"red"},{score:{name:"$(cooldown)",objective:"var"},color:"yellow"},{text:"틱 기다려야 합니다.",color:"red"}]
$execute if score $(cooldown) var matches 1.. at @s run playsound block.note_block.bass master @s ~ ~ ~ 0.7 0.7
$execute if score $(cooldown) var matches 1.. run return 0

data modify storage data tmp.cost set value []
$data modify storage data tmp.cost append value {type:"$(source)",amount:$(source_amount)}
$scoreboard players set #alchemy_transmutation_lapis tmp $(lapis_amount)
$execute if score #alchemy_transmutation_lapis tmp matches 1.. run data modify storage data tmp.cost append value {type:"lapis",amount:$(lapis_amount)}
data modify storage data tmp.cost append value {type:"no_obsidian",amount:1}
execute store result score #alchemy_transmutation_cost_ok tmp run function resource/check_cost
execute unless score #alchemy_transmutation_cost_ok tmp matches 1 run title @s actionbar {text:"연성에 필요한 자원이 부족합니다.",color:"red",italic:true}
execute unless score #alchemy_transmutation_cost_ok tmp matches 1 at @s run playsound block.note_block.bass master @s ~ ~ ~ 0.7 0.7
execute unless score #alchemy_transmutation_cost_ok tmp matches 1 run return 0

function resource/cost/take
scoreboard players set #material_add_value tmp 1
$function resource/add {id:"$(target)"}
$scoreboard players set $(cooldown) var 6000

execute at @s run playsound block.brewing_stand.brew master @s ~ ~ ~ 1 0.8
execute at @s run playsound block.amethyst_block.chime master @s ~ ~ ~ 0.8 1.4
$title @s actionbar [{text:"",italic:false},{text:"$(source_name) $(source_amount)개를 ",color:"gray"},{text:"$(target_name) 1개",color:"$(target_color)"},{text:"로 연성했습니다.",color:"gray"}]
