kill @e[type=marker,tag=elevator_2_perimeter]
# 둘레 256틱을 약 3등분한 0 / 85 / 171틱 위치
summon marker -16 -46 16 {Tags:["elevator_2_perimeter","elevator_2_config_3","elevator_2_slot_1","elevator_2_z_positive"]}
summon marker -21.25 -46 32 {Tags:["elevator_2_perimeter","elevator_2_config_3","elevator_2_slot_2","elevator_2_x_negative"]}
summon marker -32 -46 21.25 {Tags:["elevator_2_perimeter","elevator_2_config_3","elevator_2_slot_3","elevator_2_z_negative"]}
scoreboard players set @e[type=marker,tag=elevator_2_slot_1] tmp 0
scoreboard players set @e[type=marker,tag=elevator_2_slot_2] tmp 21
scoreboard players set @e[type=marker,tag=elevator_2_slot_3] tmp 43
