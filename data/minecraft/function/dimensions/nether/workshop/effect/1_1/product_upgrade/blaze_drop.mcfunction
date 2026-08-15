data remove storage data tmp.cost
data remove storage data tmp.cost_original
function product/nether/blaze/value/drop_upgrade_cost
execute store result score #1_1_cost_check tmp run function dimensions/nether/workshop/effect/1_1/check_cost_no_exp
execute if score #1_1_cost_check tmp matches 1 run function product/take_upgrade_cost
execute if score #1_1_cost_check tmp matches 1 run scoreboard players add #blaze_drop_lvl upgrade 1
execute if score #1_1_cost_check tmp matches 1 run title @a[tag=player] actionbar ["", {text:"§6🍀 §3§l아차원 초월§7: 블레이즈 가루 드롭량 자동 업그레이드 §8(Lv. "}, {score:{name:"#blaze_drop_lvl",objective:"upgrade"}, color:"aqua"}, {text:"§8)"}]
execute if score #1_1_cost_check tmp matches 1 as @a[tag=player] at @s run playsound entity.breeze.jump weather @s ~ ~ ~ 0.3 2
execute if score #1_1_cost_check tmp matches 1 run scoreboard players set #1_1_done tmp 1
