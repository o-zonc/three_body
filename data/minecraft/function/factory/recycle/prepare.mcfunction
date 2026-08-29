execute unless score #factory_recycle_level upgrade = #factory_recycle_level upgrade run scoreboard players set #factory_recycle_level upgrade 0
execute if score #factory_recycle_level upgrade matches ..-1 run scoreboard players set #factory_recycle_level upgrade 0
execute if score #factory_recycle_level upgrade matches 5.. run scoreboard players set #factory_recycle_level upgrade 4
data remove storage data tmp.cost
execute if score #factory_recycle_level upgrade matches 0 run data modify storage data tmp.cost set value [{type:"copper",amount:1000},{type:"iron",amount:500}]
execute if score #factory_recycle_level upgrade matches 1 run data modify storage data tmp.cost set value [{type:"iron",amount:10000},{type:"emerald",amount:500}]
execute if score #factory_recycle_level upgrade matches 2 run data modify storage data tmp.cost set value [{type:"iron",amount:100000},{type:"lapis",amount:5000},{type:"information",amount:10},{type:"time",amount:2}]
execute if score #factory_recycle_level upgrade matches 3 run data modify storage data tmp.cost set value [{type:"iron",amount:500000},{type:"diamond",amount:1000},{type:"information",amount:25},{type:"time",amount:5}]
execute if data storage data tmp.cost run function resource/cost/apply_shop_advancement_discount
