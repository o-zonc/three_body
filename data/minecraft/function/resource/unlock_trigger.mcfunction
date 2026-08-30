# 생산 요소 해금

# 1째 자리 --> 자리 수 유지 용 숫자
# 2째 자리 --> 오버월드(1), 네더(2), 엔드(3)
# 3~4째 자리 --> 해금 요소

# 이 함수는 tick에서 unlock_trigger 값이 들어온 플레이어를 @s로 지정한 뒤 호출합니다.

# 아직 시대 조건을 충족하지 못한 자원 (1000)
execute if score @s unlock_trigger matches 1000 at @s run playsound block.note_block.bass weather @s ~ ~ ~ 0.8 0.5
execute if score @s unlock_trigger matches 1000 run title @s actionbar {text:"아직 해금되지 않은 자원입니다.",color:"red",italic:true}

# 오버월드 (11XX)
execute if score @s unlock_trigger matches 1101 run function resource/unlock/stone
execute if score @s unlock_trigger matches 1102 run function resource/unlock/coal
execute if score @s unlock_trigger matches 1103 run function resource/unlock/copper
execute if score @s unlock_trigger matches 1104 run function resource/unlock/iron
execute if score @s unlock_trigger matches 1105 run function resource/unlock/emerald
execute if score @s unlock_trigger matches 1106 run function resource/unlock/lapis

# 네더 (12XX)

# 엔드 (13XX)

# 처리한 플레이어만 초기화하고 다음 /trigger 입력을 허용합니다.
scoreboard players reset @s unlock_trigger
scoreboard players enable @s unlock_trigger
