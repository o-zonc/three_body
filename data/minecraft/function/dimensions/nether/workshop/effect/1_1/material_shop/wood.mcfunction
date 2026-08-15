data remove storage data tmp.cost
data remove storage data tmp.cost_original
function dimensions/overworld/shop/material_shop/value/wood_upgrade_cost
function dimensions/overworld/shop/crystal_shop/value/apply_material_shop_cost_down
execute store result score #1_1_cost_check tmp run function dimensions/nether/workshop/effect/1_1/check_cost_no_exp
execute if score #1_1_cost_check tmp matches 1 run function dimensions/overworld/shop/material_shop/take_cost
execute if score #1_1_cost_check tmp matches 1 run scoreboard players add #wood_lvl material_shop 1
execute if score #1_1_cost_check tmp matches 1 run title @a[tag=player] actionbar ["", {text:"§6🍀 §3§l아차원 초월§7: 나무 수급량 자동 업그레이드 §8(Lv. "}, {score:{name:"#wood_lvl",objective:"material_shop"}, color:"aqua"}, {text:"§8)"}]
execute if score #1_1_cost_check tmp matches 1 as @a[tag=player] at @s run playsound entity.breeze.jump weather @s ~ ~ ~ 0.3 2
execute if score #1_1_cost_check tmp matches 1 run scoreboard players set #1_1_done tmp 1
