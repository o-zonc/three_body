execute unless score #factory_energy_level upgrade = #factory_energy_level upgrade run scoreboard players set #factory_energy_level upgrade 0
execute if score #factory_energy_level upgrade matches ..-1 run scoreboard players set #factory_energy_level upgrade 0
execute if score #factory_energy_level upgrade matches 4.. run scoreboard players set #factory_energy_level upgrade 3
data remove storage data tmp.cost
execute if score #factory_energy_level upgrade matches 0 run data modify storage data tmp.cost set value [{type:"copper",amount:2000},{type:"coal",amount:5000}]
execute if score #factory_energy_level upgrade matches 1 run data modify storage data tmp.cost set value [{type:"iron",amount:20000},{type:"coal",amount:50000}]
execute if score #factory_energy_level upgrade matches 2 run data modify storage data tmp.cost set value [{type:"iron",amount:250000},{type:"gold",amount:5000},{type:"information",amount:20},{type:"time",amount:4}]
execute if data storage data tmp.cost run function resource/cost/apply_shop_advancement_discount
