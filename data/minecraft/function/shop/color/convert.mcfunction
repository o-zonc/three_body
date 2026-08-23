# Macro args: source, source_name, source_color, target, target_name, target_color, base
execute unless entity @s[advancements={0_overworld/22_heavy_ion_experiment=true}] run return 0
$execute unless score #$(source) material matches 1.. run title @s actionbar {text:"$(source_name) 자원이 부족합니다.",color:"red",bold:false}
$execute unless score #$(source) material matches 1.. at @s run playsound block.note_block.bass weather @s ~ ~ ~ 0.8 0.5
$execute unless score #$(source) material matches 1.. run return 0

$execute store result score #color_conversion_result tmp run function shop/color/calculate {target:"$(target)",base:$(base)}
$scoreboard players remove #$(source) material 1
scoreboard players operation #material_add_value tmp = #color_conversion_result tmp
$function resource/add_material/$(target)

playsound block.amethyst_block.chime weather @s ~ ~ ~ 0.8 1.5
$title @s actionbar [{text:"$(source_name) 1개",color:"$(source_color)",bold:false},{text:" → ",color:"gray",bold:false},{text:"$(target_name) ",color:"$(target_color)",bold:false},{score:{name:"#color_conversion_result",objective:"tmp"},color:"$(target_color)",bold:false},{text:"개",color:"gray",bold:false}]
return 1
