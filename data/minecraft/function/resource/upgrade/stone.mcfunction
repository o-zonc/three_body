# 독립 자원 시스템의 돌 재생 업그레이드
data remove storage data tmp.cost
execute unless score #stone unlock matches 1 run function resource/effect/failure
execute unless score #stone unlock matches 1 run return 0
data remove storage data tmp.cost_original
function resource/material/stone/value/regen_upgrade_cost
execute if data storage data tmp.cost run function resource/cost/apply_shop_advancement_discount
execute unless data storage data tmp.cost at @s run playsound block.note_block.bass weather @s ~ ~ ~ 0.8 0.5
execute unless data storage data tmp.cost run title @s actionbar {text:"더 이상 업그레이드 할 수 없습니다.",color:"red",italic:true}
execute unless data storage data tmp.cost run return 0

execute store result score #stone_regen_upgrade_cost_check tmp run function resource/check_cost
execute unless score #stone_regen_upgrade_cost_check tmp matches 1 at @s run playsound block.note_block.bass weather @s ~ ~ ~ 0.8 0.5
execute unless score #stone_regen_upgrade_cost_check tmp matches 1 run title @s actionbar {text:"재료가 부족합니다.",color:"red",italic:true}
execute unless score #stone_regen_upgrade_cost_check tmp matches 1 run return 0

function resource/cost/take
scoreboard players add #stone_regen_lvl upgrade 1
scoreboard players operation #poss_effective_lvl tmp = #stone_regen_lvl upgrade
execute in overworld run playsound entity.ender_eye.death weather @a[tag=player] -2.5 -58.5 35.5 1 0.8
execute in overworld run playsound block.respawn_anchor.charge weather @a[tag=player] -2.5 -58.5 35.5 1 2
execute in overworld run particle end_rod -2.5 -58.5 35.5 0.3 0.3 0.3 0.4 30 force @a[tag=player]
execute as @a[tag=player] run function resource/material/stone/ui/info
return 1
