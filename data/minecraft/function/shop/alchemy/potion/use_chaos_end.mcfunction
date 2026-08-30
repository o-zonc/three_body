# potion_used 스코어와 직전 소지 태그로 섭취가 확인된 뒤 호출됩니다.
scoreboard players set #chaos_end_success tmp 0
execute if score #GLOBAL current_dim matches 0 if score #GLOBAL state_overworld matches 1 run scoreboard players set #chaos_end_success tmp 1
execute if score #GLOBAL current_dim matches 0 if score #GLOBAL state_overworld matches 1 run scoreboard players set #GLOBAL state_overworld 0
execute if score #chaos_end_success tmp matches 1 if score #GLOBAL current_dim matches 0 run scoreboard players set #GLOBAL timer_overworld 6000
execute if score #chaos_end_success tmp matches 1 if score #GLOBAL current_dim matches 0 run bossbar set bossbar_overworld max 6000

execute if score #GLOBAL current_dim matches 1 if score #GLOBAL state_dried matches 1 run scoreboard players set #chaos_end_success tmp 1
execute if score #GLOBAL current_dim matches 1 if score #GLOBAL state_dried matches 1 run scoreboard players set #GLOBAL state_dried 0
execute if score #chaos_end_success tmp matches 1 if score #GLOBAL current_dim matches 1 run scoreboard players set #GLOBAL timer_dried 6000
execute if score #chaos_end_success tmp matches 1 if score #GLOBAL current_dim matches 1 run bossbar set bossbar_dried max 6000

execute if score #GLOBAL current_dim matches 2 if score #GLOBAL state_frozen matches 1 run scoreboard players set #chaos_end_success tmp 1
execute if score #GLOBAL current_dim matches 2 if score #GLOBAL state_frozen matches 1 run scoreboard players set #GLOBAL state_frozen 0
execute if score #chaos_end_success tmp matches 1 if score #GLOBAL current_dim matches 2 run scoreboard players set #GLOBAL timer_frozen 6000
execute if score #chaos_end_success tmp matches 1 if score #GLOBAL current_dim matches 2 run bossbar set bossbar_frozen max 6000

execute if score #chaos_end_success tmp matches 1 run time rate 1
execute if score #chaos_end_success tmp matches 1 run effect clear @a minecraft:mining_fatigue
execute if score #chaos_end_success tmp matches 1 run tag @a remove frozen_chaos_protected
execute if score #chaos_end_success tmp matches 1 run tag @a remove dried_chaos_protected
execute if score #chaos_end_success tmp matches 1 run tellraw @a [{text:"[현재 세계] ",color:"light_purple"},{text:"난세기가 강제로 종료되었습니다.",color:"green"}]
execute unless score #chaos_end_success tmp matches 1 run tellraw @s {text:"지금은 난세기가 아닌걸요?",color:"gray"}
