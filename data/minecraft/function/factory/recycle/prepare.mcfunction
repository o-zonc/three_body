execute unless score #factory_recycle_level upgrade = #factory_recycle_level upgrade run scoreboard players set #factory_recycle_level upgrade 0
execute if score #factory_recycle_level upgrade matches ..-1 run scoreboard players set #factory_recycle_level upgrade 0
execute if score #factory_recycle_level upgrade matches 5.. run scoreboard players set #factory_recycle_level upgrade 4
data remove storage data tmp.cost
execute if score #factory_recycle_level upgrade matches 0 run data modify storage data tmp.cost set value [{type:"copper",amount:100000},{type:"iron",amount:80000}]
execute if score #factory_recycle_level upgrade matches 1 run data modify storage data tmp.cost set value [{type:"iron",amount:400000},{type:"coal",amount:300000},{type:"gold",amount:50000}]
execute if score #factory_recycle_level upgrade matches 2 run data modify storage data tmp.cost set value [{type:"iron",amount:1500000},{type:"copper",amount:1000000},{type:"coal",amount:1200000},{type:"gold",amount:200000},{type:"information",amount:8}]
execute if score #factory_recycle_level upgrade matches 3 run data modify storage data tmp.cost set value [{type:"iron",amount:5000000},{type:"copper",amount:3000000},{type:"gold",amount:800000},{type:"diamond",amount:300000},{type:"information",amount:20},{type:"time",amount:4}]
execute if data storage data tmp.cost run function resource/cost/apply_shop_advancement_discount
