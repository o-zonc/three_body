# 일정 보관량을 한 번 달성하면 해당 자원의 자동 인출 기능이 영구 해금됩니다.
execute if score #information_bank meta matches 500.. if score #information_auto_withdraw meta matches 0 run tellraw @s {text:"정보 보관소 자동 인출 기능이 해금되었습니다.",color:"light_purple"}
execute if score #information_bank meta matches 500.. if score #information_auto_withdraw meta matches 0 run scoreboard players set #information_auto_withdraw meta 1
execute if score #time_bank meta matches 250.. if score #time_auto_withdraw meta matches 0 run tellraw @s {text:"시간 보관소 자동 인출 기능이 해금되었습니다.",color:"dark_aqua"}
execute if score #time_bank meta matches 250.. if score #time_auto_withdraw meta matches 0 run scoreboard players set #time_auto_withdraw meta 1
execute if score #information_auto_withdraw meta matches 1 run function meta/withdraw_silent {id:"information"}
execute if score #time_auto_withdraw meta matches 1 run function meta/withdraw_silent {id:"time"}
