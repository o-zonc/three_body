# 일정 보관량을 한 번 달성하면 해당 자원의 자동 인출 기능이 영구 해금된다.
# 자동 인출은 인벤토리를 주기적으로 채우지 않고, 결제 시 보관소 초과분을 직접 사용하는 기능이다.
execute if score #information_bank meta matches 1000.. if score #information_auto_withdraw meta matches 0 run tellraw @s {text:"정보 보관소 자동 인출 기능이 해금되었습니다.",color:"light_purple"}
execute if score #information_bank meta matches 1000.. if score #information_auto_withdraw meta matches 0 run scoreboard players set #information_auto_withdraw meta 1
execute if score #time_bank meta matches 500.. if score #time_auto_withdraw meta matches 0 run tellraw @s {text:"시간 보관소 자동 인출 기능이 해금되었습니다.",color:"dark_aqua"}
execute if score #time_bank meta matches 500.. if score #time_auto_withdraw meta matches 0 run scoreboard players set #time_auto_withdraw meta 1
