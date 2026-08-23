scoreboard players set #GLOBAL alien_interference 0
scoreboard players set #GLOBAL alien_timer 1200
playsound block.beacon.deactivate weather @a ~ ~ ~ 0.7 1.4
tellraw @a ["",{text:"[외계 간섭 해제] ",color:"green"},{text:"철 보유량이 1,000,000개 이하로 감소해 외계 문명의 감시 대상에서 벗어났습니다.",color:"gray"}]
