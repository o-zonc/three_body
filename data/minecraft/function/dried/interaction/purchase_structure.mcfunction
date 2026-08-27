# Macro args: id, name, color, x, y, z, cost
$execute in dried if data block $(x) $(y) $(z) {name:"$(id)"} run title @s actionbar {text:"$(name)은(는) 이미 해금했습니다.",color:"red"}
$execute in dried if data block $(x) $(y) $(z) {name:"$(id)"} run return 0

$data modify storage data tmp.cost set value $(cost)
execute store result score #dried_structure_cost_ok tmp run function resource/check_cost
execute unless score #dried_structure_cost_ok tmp matches 1 run title @s actionbar {text:"시설 해금 재료가 부족합니다.",color:"red"}
execute unless score #dried_structure_cost_ok tmp matches 1 at @s run playsound block.note_block.bass weather @s ~ ~ ~ 0.8 0.5
execute unless score #dried_structure_cost_ok tmp matches 1 run return 0

function resource/cost/take
$function dried/structure/$(id)/on
playsound entity.player.levelup weather @s ~ ~ ~ 0.8 1.2
$function dried/interaction/structure_ui {id:"$(id)",name:"$(name)",color:"$(color)",trigger:0,x:$(x),y:$(y),z:$(z),cost:$(cost)}
return 1
