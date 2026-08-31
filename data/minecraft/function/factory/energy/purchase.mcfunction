function factory/energy/prepare
execute unless data storage data tmp.cost run title @s actionbar {text:"태양광 발전 연구가 완료되었습니다.",color:"green",italic:false}
execute unless data storage data tmp.cost run return 0
execute store result score #factory_energy_cost_ok tmp run function resource/check_cost
execute unless score #factory_energy_cost_ok tmp matches 1 run title @s actionbar {text:"연구 재료가 부족합니다.",color:"red",italic:true}
execute unless score #factory_energy_cost_ok tmp matches 1 at @s run playsound block.note_block.bass weather @s ~ ~ ~ 0.8 0.5
execute unless score #factory_energy_cost_ok tmp matches 1 run return 0
function resource/cost/take
scoreboard players add #factory_energy_level upgrade 1
function factory/cache_all
playsound entity.player.levelup weather @s ~ ~ ~ 0.8 1.2
function factory/energy/ui
