execute if score #observatory unlock matches 1.. run title @s actionbar {"text":"관측소는 이미 구매했습니다.","color":"red",italic:true}
execute if score #observatory unlock matches 1.. run return 0

execute unless score #overworld civilization_age matches 3.. run title @s actionbar {"text":"관측소가 잠겨 있습니다. 청동기 시대에 도달해야 합니다.","color":"red",italic:true}
execute unless score #overworld civilization_age matches 3.. at @s run playsound block.note_block.bass weather @s ~ ~ ~ 0.8 0.5
execute unless score #overworld civilization_age matches 3.. run return 0

scoreboard players set #observatory unlock 1
function common/structure/observatory/on
execute unless entity @s[advancements={0_overworld/20_observatory=true}] run advancement grant @s only 0_overworld/20_observatory
playsound entity.player.levelup weather @s ~ ~ ~ 0.8 1.2
function shop/observatory/interact
return 1
