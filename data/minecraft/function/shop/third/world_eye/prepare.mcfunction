execute unless score #world_eye_shop_lvl upgrade = #world_eye_shop_lvl upgrade run scoreboard players set #world_eye_shop_lvl upgrade 0
scoreboard players operation #third_eye_lvl tmp = #world_eye_shop_lvl upgrade
scoreboard players set #third_eye_yield tmp 1
execute if score #third_eye_lvl tmp matches 1 run scoreboard players set #third_eye_yield tmp 4
execute if score #third_eye_lvl tmp matches 2 run scoreboard players set #third_eye_yield tmp 16
execute if score #third_eye_lvl tmp matches 3.. run scoreboard players set #third_eye_yield tmp 64
scoreboard players set #third_eye_next_yield tmp 0
execute if score #third_eye_lvl tmp matches 0 run scoreboard players set #third_eye_next_yield tmp 4
execute if score #third_eye_lvl tmp matches 1 run scoreboard players set #third_eye_next_yield tmp 16
execute if score #third_eye_lvl tmp matches 2 run scoreboard players set #third_eye_next_yield tmp 64
data remove storage data tmp.cost
# 보관소를 활용하는 장기 목표 비용. 각 단계의 당시 연성 효율과 저장 상한으로 달성 가능하다.
execute if score #third_eye_lvl tmp matches 0 run data modify storage data tmp.cost set value [{type:"information",amount:48},{type:"time",amount:12},{type:"world_eye",amount:16}]
execute if score #third_eye_lvl tmp matches 1 run data modify storage data tmp.cost set value [{type:"information",amount:192},{type:"time",amount:48},{type:"world_eye",amount:256}]
execute if score #third_eye_lvl tmp matches 2 run data modify storage data tmp.cost set value [{type:"information",amount:768},{type:"time",amount:192},{type:"world_eye",amount:4096}]
