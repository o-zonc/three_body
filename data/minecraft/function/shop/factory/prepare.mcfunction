# 0: 공장 / 1: 입자가속기 / 2: 타임머신 / 3: 완료
scoreboard players operation #factory_shop_stage tmp = #GLOBAL factory_build_stage

data remove storage data tmp.factory_shop
execute if score #factory_shop_stage tmp matches 0 run data modify storage data tmp.factory_shop set value {name:"공장",required_age:7,cost:[{type:"copper",amount:800},{type:"iron",amount:600}]}
execute if score #factory_shop_stage tmp matches 1 run data modify storage data tmp.factory_shop set value {name:"입자가속기",required_age:8,cost:[{type:"iron",amount:400},{type:"emerald",amount:150},{type:"lapis",amount:150}]}
execute if score #factory_shop_stage tmp matches 2 run data modify storage data tmp.factory_shop set value {name:"타임머신",required_age:9,cost:[{type:"iron",amount:800},{type:"emerald",amount:300},{type:"lapis",amount:300}]}
