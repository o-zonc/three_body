# 보호막은 5분마다 플레이어가 소지한 시간 1개를 소비합니다.
execute store result score #shield_time_paid tmp run clear @s minecraft:echo_shard[minecraft:custom_data~{three_body:{meta:"time"}}] 1
execute if score #shield_time_paid tmp matches 1 run scoreboard players set #GLOBAL shield_maintenance 6000
execute if score #shield_time_paid tmp matches 1 run function meta/sync
execute if score #shield_time_paid tmp matches 1 run return 1
scoreboard players set #GLOBAL shield_charge 0
scoreboard players set #GLOBAL shield_maintenance 6000
playsound block.beacon.deactivate weather @a ~ ~ ~ 1 0.7
tellraw @a [{text:"[양자 보호 컴퓨터] ",color:"white",bold:true},{text:"소지한 시간이 부족해 보호막이 정지했습니다. 시간 보관소에서 인출해야 합니다.",color:"red"}]
