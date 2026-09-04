execute unless score #factory_recycle_level upgrade = #factory_recycle_level upgrade run scoreboard players set #factory_recycle_level upgrade 0
execute if score #factory_recycle_level upgrade matches ..-1 run scoreboard players set #factory_recycle_level upgrade 0
execute if score #factory_recycle_level upgrade matches 5.. run scoreboard players set #factory_recycle_level upgrade 4
data remove storage data tmp.cost
execute if score #factory_recycle_level upgrade matches 0 run data modify storage data tmp.cost set value [{type:"copper",amount:10000},{type:"iron",amount:8000}]
execute if score #factory_recycle_level upgrade matches 1 run data modify storage data tmp.cost set value [{type:"iron",amount:70000},{type:"gold",amount:10000}]
execute if score #factory_recycle_level upgrade matches 2 run data modify storage data tmp.cost set value [{type:"iron",amount:200000},{type:"coal",amount:170000},{type:"gold",amount:30000},{type:"information",amount:8}]
execute if score #factory_recycle_level upgrade matches 3 run data modify storage data tmp.cost set value [{type:"iron",amount:700000},{type:"gold",amount:120000},{type:"diamond",amount:50000},{type:"information",amount:20},{type:"time",amount:4}]
execute if data storage data tmp.cost run function resource/cost/apply_shop_advancement_discount
