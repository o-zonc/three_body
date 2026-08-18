data remove storage data tmp.cost
data remove storage data tmp.cost_original
function resource/material/wood/value/regen_upgrade_cost
execute store result score #1_1_cost_check tmp run function dimensions/nether/workshop/effect/1_1/check_cost_no_exp
execute if score #1_1_cost_check tmp matches 1 run function resource/take_upgrade_cost
execute if score #1_1_cost_check tmp matches 1 run scoreboard players add #wood_regen_lvl upgrade 1
execute if score #1_1_cost_check tmp matches 1 run title @a[tag=player] actionbar ["", {text:"§6🍀 §3§l아차원 초월§7: 나무 재생산 속도 자동 업그레이드 §8(Lv. "}, {score:{name:"#wood_regen_lvl",objective:"upgrade"}, color:"aqua"}, {text:"§8)"}]
execute if score #1_1_cost_check tmp matches 1 as @a[tag=player] at @s run playsound entity.breeze.jump weather @s ~ ~ ~ 0.3 2
execute if score #1_1_cost_check tmp matches 1 run scoreboard players set #1_1_done tmp 1
