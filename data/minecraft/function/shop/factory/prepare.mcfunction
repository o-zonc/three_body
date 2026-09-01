# 0: 공장 / 1: 입자가속기 / 2: 타임머신 / 3: 완료
# 기존 세이브는 이미 받은 발전과제를 전역 건설 단계로 이관합니다.
execute if entity @a[advancements={0_overworld/23_factory=true}] if score #GLOBAL factory_build_stage matches 0 run scoreboard players set #GLOBAL factory_build_stage 1
execute if entity @a[advancements={0_overworld/22_particle_accelerator=true}] if score #GLOBAL factory_build_stage matches ..1 run scoreboard players set #GLOBAL factory_build_stage 2
execute if entity @a[advancements={0_overworld/24_time_machine=true}] if score #GLOBAL factory_build_stage matches ..2 run scoreboard players set #GLOBAL factory_build_stage 3
scoreboard players operation #factory_shop_stage tmp = #GLOBAL factory_build_stage

data remove storage data tmp.factory_shop
execute if score #factory_shop_stage tmp matches 0 run data modify storage data tmp.factory_shop set value {name:"공장",required_age:7,cost:[{type:"wood",amount:5000},{type:"stone",amount:2000},{type:"coal",amount:1000},{type:"copper",amount:200},{type:"iron",amount:200}]}
execute if score #factory_shop_stage tmp matches 1 run data modify storage data tmp.factory_shop set value {name:"입자가속기",required_age:8,cost:[{type:"copper",amount:200},{type:"iron",amount:200},{type:"emerald",amount:100},{type:"lapis",amount:100}]}
execute if score #factory_shop_stage tmp matches 2 run data modify storage data tmp.factory_shop set value {name:"타임머신",required_age:9,cost:[{type:"copper",amount:400},{type:"iron",amount:400},{type:"emerald",amount:200},{type:"lapis",amount:200}]}
