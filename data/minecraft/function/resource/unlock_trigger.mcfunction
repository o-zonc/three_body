# 생산 요소 해금

# 1째 자리 --> 자리 수 유지 용 숫자
# 2째 자리 --> 오버월드(1), 네더(2), 엔드(3)
# 3~4째 자리 --> 해금 요소



# 아직 시대 조건을 충족하지 못한 자원 (1000)
execute as @a[tag=player] if score @s unlock_trigger matches 1000 at @s run playsound block.note_block.bass weather @s ~ ~ ~ 0.8 0.5
execute as @a[tag=player] if score @s unlock_trigger matches 1000 run title @s actionbar "§c아직 해금되지 않은 자원입니다."



# 오버월드 (11XX)
execute as @a[tag=player] if score @s unlock_trigger matches 1101 run function resource/unlock/stone
execute as @a[tag=player] if score @s unlock_trigger matches 1102 run function resource/unlock/coal
execute as @a[tag=player] if score @s unlock_trigger matches 1103 run function resource/unlock/copper
execute as @a[tag=player] if score @s unlock_trigger matches 1104 run function resource/unlock/iron
execute as @a[tag=player] if score @s unlock_trigger matches 1105 run function resource/unlock/emerald
execute as @a[tag=player] if score @s unlock_trigger matches 1106 run function resource/unlock/lapis



# 네더 (12XX)




# 엔드 (13XX)




execute as @a[tag=player] if score @s unlock_trigger matches 1.. run scoreboard players reset @s unlock_trigger
scoreboard players enable @a[tag=player] unlock_trigger
