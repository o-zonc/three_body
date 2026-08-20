kill @e[type=marker,tag=elevator_2_perimeter]
summon marker -16 -46 16 {Tags:["elevator_2_perimeter","elevator_2_config_4","elevator_2_slot_1","elevator_2_z_positive"]}
summon marker -16 -46 32 {Tags:["elevator_2_perimeter","elevator_2_config_4","elevator_2_slot_2","elevator_2_x_negative"]}
summon marker -32 -46 32 {Tags:["elevator_2_perimeter","elevator_2_config_4","elevator_2_slot_3","elevator_2_z_negative"]}
summon marker -32 -46 16 {Tags:["elevator_2_perimeter","elevator_2_config_4","elevator_2_slot_4","elevator_2_x_positive"]}
scoreboard players set @e[type=marker,tag=elevator_2_slot_1] tmp 0
scoreboard players set @e[type=marker,tag=elevator_2_slot_2] tmp 0
scoreboard players set @e[type=marker,tag=elevator_2_slot_3] tmp 0
scoreboard players set @e[type=marker,tag=elevator_2_slot_4] tmp 0
