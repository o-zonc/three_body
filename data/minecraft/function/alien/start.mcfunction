scoreboard players set #GLOBAL alien_interference 1
scoreboard players set #GLOBAL alien_timer 1200
playsound entity.warden.heartbeat weather @a ~ ~ ~ 1 0.6
title @a title {text:"외계 간섭 감지",color:"dark_red",bold:true}
title @a subtitle {text:"미확인 양자 컴퓨터가 과학 활동을 감시합니다.",color:"red"}
tellraw @a ["",{text:"\n  [ 속보 ]",color:"dark_red", bold:true},{text:"\n\n  현재의 기술 수준으로는 이해할 수 없는 양자 크기의 슈퍼컴퓨터가 활동을 감시합니다.",color:"red"},{text:"\n\n  • 반짝이는 파티클은 감시가 진행 중이라는 신호입니다.",color:"yellow"},{text:"\n  • 입자가속기를 건설해 실험을 진행하십시오. 그들에게서 잠시 벗어날 수 있습니다.",color:"aqua"},{text:"\n"}]
