execute if score #dried_relic_level upgrade matches 5.. run return 0
function dried/relic/prepare
data modify storage data tmp.cost set from storage data tmp.dried_relic.cost
execute store result score #dried_relic_cost_ok tmp run function resource/check_cost
execute unless entity @a[tag=accelerator_experiment_running] unless score #dried_relic_cost_ok tmp matches 1 run title @s actionbar {text:"업그레이드 재료가 부족합니다.",color:"red",italic:true}
execute unless score #dried_relic_cost_ok tmp matches 1 at @s run playsound block.note_block.bass weather @s ~ ~ ~ 0.8 0.5
execute unless score #dried_relic_cost_ok tmp matches 1 run return 0
function resource/cost/take
scoreboard players add #dried_relic_level upgrade 1
execute if score #dried_relic_level upgrade matches 2 run advancement grant @s only 2_dried/02_relic_restoration
execute if score #dried_relic_level upgrade matches 5 run advancement grant @s only 2_dried/03_help_from_the_past
function dried/relic/prepare
scoreboard players operation #dried_relic_timer generate = #dried_relic_interval tmp
playsound entity.player.levelup weather @s ~ ~ ~ 0.8 1.2
function dried/relic/ui
return 1
