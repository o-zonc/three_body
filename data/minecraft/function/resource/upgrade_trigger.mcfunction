# 이 함수는 tick에서 upgrade_trigger 값이 들어온 플레이어를 @s로 지정한 뒤 호출합니다.

# 오버월드 (11XX)
execute if score @s upgrade_trigger matches 1101 run function resource/upgrade/wood
execute if score @s upgrade_trigger matches 1102 run function resource/upgrade/stone
execute if score @s upgrade_trigger matches 1111 run function resource/upgrade/coal
execute if score @s upgrade_trigger matches 1112 run function resource/upgrade/copper
execute if score @s upgrade_trigger matches 1113 run function resource/upgrade/iron
execute if score @s upgrade_trigger matches 1114 run function resource/upgrade/gold
execute if score @s upgrade_trigger matches 1115 run function resource/upgrade/diamond
execute if score @s upgrade_trigger matches 1118 run function resource/upgrade/yellow
execute if score @s upgrade_trigger matches 1119 run function resource/upgrade/blue

# 처리한 플레이어만 초기화하고 다음 /trigger 입력을 허용합니다.
scoreboard players reset @s upgrade_trigger
scoreboard players enable @s upgrade_trigger
