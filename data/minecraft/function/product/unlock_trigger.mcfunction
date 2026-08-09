# 생산 요소 해금

# 1째 자리 --> 자리 수 유지 용 숫자
# 2째 자리 --> 오버월드(1), 네더(2), 엔드(3)
# 3~4째 자리 --> 해금 요소



# 오버월드 (11XX)
execute as @a[tag=player] if score @s unlock_trigger matches 1101 run function product/overworld/stone/trigger/unlock
execute as @a[tag=player] if score @s unlock_trigger matches 1102 run function product/overworld/mob/trigger/unlock



# 네더 (12XX)
execute as @a[tag=player] if score @s unlock_trigger matches 1201 run function product/nether/gold/trigger/unlock
execute as @a[tag=player] if score @s unlock_trigger matches 1202 run function product/nether/blaze/trigger/unlock




# 엔드 (13XX)




execute as @a[tag=player] if score @s unlock_trigger matches 1.. run scoreboard players reset @s unlock_trigger
