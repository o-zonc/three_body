execute unless score #factory_energy_level upgrade = #factory_energy_level upgrade run scoreboard players set #factory_energy_level upgrade 0
execute if score #factory_energy_level upgrade matches ..-1 run scoreboard players set #factory_energy_level upgrade 0
execute if score #factory_energy_level upgrade matches 4.. run scoreboard players set #factory_energy_level upgrade 3
data remove storage data tmp.cost
execute if score #factory_energy_level upgrade matches 0 run data modify storage data tmp.cost set value [{type:"coal",amount:2000},{type:"copper",amount:800}]
execute if score #factory_energy_level upgrade matches 1 run data modify storage data tmp.cost set value [{type:"coal",amount:15000},{type:"copper",amount:3000},{type:"iron",amount:5000}]
execute if score #factory_energy_level upgrade matches 2 run data modify storage data tmp.cost set value [{type:"iron",amount:150000},{type:"gold",amount:1000},{type:"diamond",amount:100},{type:"information",amount:24},{type:"time",amount:4}]
execute if data storage data tmp.cost run function resource/cost/apply_shop_advancement_discount
