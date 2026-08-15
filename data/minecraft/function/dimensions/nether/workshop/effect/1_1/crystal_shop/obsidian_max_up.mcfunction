data remove storage data tmp.cost
data remove storage data tmp.cost_original
function dimensions/overworld/shop/crystal_shop/value/obsidian_max_up_upgrade_cost
execute store result score #1_1_cost_check tmp run function dimensions/nether/workshop/effect/1_1/check_cost_no_exp
execute if score #1_1_cost_check tmp matches 1 run function product/take_upgrade_cost
execute if score #1_1_cost_check tmp matches 1 run scoreboard players add #obsidian_max_up_lvl crystal_shop 1
execute if score #1_1_cost_check tmp matches 1 run title @a[tag=player] actionbar ["", {text:"§6🍀 §3§l아차원 초월§7: 흑요석 최대 보유량 자동 업그레이드 §8(Lv. "}, {score:{name:"#obsidian_max_up_lvl",objective:"crystal_shop"}, color:"aqua"}, {text:"§8)"}]
execute if score #1_1_cost_check tmp matches 1 as @a[tag=player] at @s run playsound entity.breeze.jump weather @s ~ ~ ~ 0.3 2
execute if score #1_1_cost_check tmp matches 1 run scoreboard players set #1_1_done tmp 1
execute if score #1_1_cost_check tmp matches 1 run function product/overworld/obsidian/lock/update
