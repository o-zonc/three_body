execute unless score #factory_recycle_level upgrade = #factory_recycle_level upgrade run scoreboard players set #factory_recycle_level upgrade 0
execute if score #factory_recycle_level upgrade matches ..-1 run scoreboard players set #factory_recycle_level upgrade 0
execute if score #factory_recycle_level upgrade matches 5.. run scoreboard players set #factory_recycle_level upgrade 4
data remove storage data tmp.cost
execute if score #factory_recycle_level upgrade matches 0 run data modify storage data tmp.cost set value [{type:"copper",amount:1000},{type:"iron",amount:500}]
execute if score #factory_recycle_level upgrade matches 1 run data modify storage data tmp.cost set value [{type:"iron",amount:8000},{type:"coal",amount:5000},{type:"gold",amount:50}]
execute if score #factory_recycle_level upgrade matches 2 run data modify storage data tmp.cost set value [{type:"iron",amount:60000},{type:"coal",amount:30000},{type:"gold",amount:300},{type:"information",amount:8}]
execute if score #factory_recycle_level upgrade matches 3 run data modify storage data tmp.cost set value [{type:"iron",amount:250000},{type:"gold",amount:1500},{type:"diamond",amount:250},{type:"information",amount:20},{type:"time",amount:4}]
execute if data storage data tmp.cost run function resource/cost/apply_shop_advancement_discount
