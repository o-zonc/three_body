execute store result score #ROLL roll_chance run random value 0..99
execute store result score #ROLL_EXTREME roll_chance run random value 0..99

# [난세기 중 멸망: 15% (0~14)]
execute if entity @a[nbt={Dimension:"three_body:dried"}] if score #GLOBAL state_dried matches 1 if score #ROLL_EXTREME roll_chance matches 0..14 run tellraw @a[nbt={Dimension:"three_body:dried"}] [{"text":"[메마른 세계] 난세기 중 멸망!","color":"#a05500"}]
execute if entity @a[nbt={Dimension:"three_body:dried"}] if score #GLOBAL state_dried matches 1 if score #ROLL_EXTREME roll_chance matches 0..14 run scoreboard players set #GLOBAL state_dried 2

# [난세기 발동: 3% (0~2)]
execute if score #GLOBAL state_dried matches 0 if score #ROLL roll_chance matches 0..2 run tellraw @a[nbt={Dimension:"three_body:dried"}] [{"text":"[메마른 세계] 난세기 시작!","color":"gold"}]
execute unless score #GLOBAL state_dried matches 2 if score #ROLL roll_chance matches 0..2 run scoreboard players set #GLOBAL state_dried 1

execute unless score #GLOBAL state_dried matches 2 if score #ROLL roll_chance matches 0..2 run bossbar set three_body:bossbar_dried color red
execute unless score #GLOBAL state_dried matches 2 if score #ROLL roll_chance matches 0..2 run bossbar set three_body:bossbar_dried name {"text":"[ 메마른 세계 ] 난세기!","color": "dark_red"}

execute unless score #GLOBAL state_dried matches 2 if score #ROLL roll_chance matches 0..2 run scoreboard players set #GLOBAL timer_dried 100
execute unless score #GLOBAL state_dried matches 2 if score #ROLL roll_chance matches 0..2 run bossbar set three_body:bossbar_dried max 100

# [항성기 복귀: 97% (3~99)]
execute if score #GLOBAL state_dried matches 1 if score #ROLL roll_chance matches 3..99 run tellraw @a[nbt={Dimension:"three_body:dried"}] [{"text":"[메마른 세계] 평화로운 항성기 도래","color":"green"}]
execute unless score #GLOBAL state_dried matches 2 if score #ROLL roll_chance matches 3..99 run scoreboard players set #GLOBAL state_dried 0

execute unless score #GLOBAL state_dried matches 2 if score #ROLL roll_chance matches 3..99 run bossbar set three_body:bossbar_dried color yellow
execute unless score #GLOBAL state_dried matches 2 if score #ROLL roll_chance matches 3..99 run bossbar set three_body:bossbar_dried name {"text":"[ 메마른 세계 ] 다음 난세기까지","color": "gold"}

execute unless score #GLOBAL state_dried matches 2 if score #ROLL roll_chance matches 3..50 run scoreboard players set #GLOBAL timer_dried 300
execute unless score #GLOBAL state_dried matches 2 if score #ROLL roll_chance matches 3..50 run bossbar set three_body:bossbar_dried max 300
execute unless score #GLOBAL state_dried matches 2 if score #ROLL roll_chance matches 51..99 run scoreboard players set #GLOBAL timer_dried 600
execute unless score #GLOBAL state_dried matches 2 if score #ROLL roll_chance matches 51..99 run bossbar set three_body:bossbar_dried max 600