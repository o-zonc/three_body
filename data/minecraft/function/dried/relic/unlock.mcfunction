execute if score #dried_relic_level upgrade matches 1.. run return 0
function dried/relic/prepare
data modify storage data tmp.cost set from storage data tmp.dried_relic.cost
execute store result score #dried_relic_check tmp run function resource/check_cost
execute unless entity @a[tag=accelerator_experiment_running] unless score #dried_relic_check tmp matches 1 run title @s actionbar {text:"자원이 부족합니다.",color:"red",italic:true}
execute unless score #dried_relic_check tmp matches 1 run return 0
function resource/cost/take
scoreboard players set #dried_relic_level upgrade 1
advancement grant @s only 2_dried/01_archaeologist
playsound entity.player.levelup weather @s ~ ~ ~ 0.8 1.2
function dried/relic/ui
return 1
