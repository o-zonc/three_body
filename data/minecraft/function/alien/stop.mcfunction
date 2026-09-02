function alien/stop_silent
playsound block.beacon.deactivate weather @a ~ ~ ~ 0.7 1.4
tellraw @a ["",{text:"[외계 간섭 해제] ",color:"green"},{text:"외계 문명의 과학 봉쇄를 돌파했습니다.",color:"gray"}]
