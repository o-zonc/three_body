scoreboard players set #GLOBAL alien_interference 1
scoreboard players set #GLOBAL alien_timer 1200
playsound entity.warden.heartbeat weather @a ~ ~ ~ 1 0.6
title @a title {text:"외계 간섭 감지",color:"dark_red",bold:true}
title @a subtitle {text:"미확인 양자 컴퓨터가 과학 활동을 감시합니다.",color:"red"}
tellraw @a ["",{text:"\n  [ 긴급 과학 통신 ]",color:"dark_red"},{text:"\n\n  철 자원 1,000,000개 초과와 동시에 미지의 관측 장치가 활성화되었습니다.",color:"gray"},{text:"\n  외계 문명이 보낸 양자 크기 슈퍼컴퓨터가 실험을 교란하고 자원을 전송하고 있습니다.",color:"red"},{text:"\n\n  • 반딧불이 같은 잔광은 감시가 진행 중이라는 신호입니다.",color:"yellow"},{text:"\n  • 보호막이 없으면 60초마다 철·청금석·금·다이아몬드의 1%를 탈취당합니다.",color:"yellow"},{text:"\n  • 입자가속기 실험으로 양자 얽힘 파편을 얻으십시오.",color:"aqua"},{text:"\n  • 공장의 보호막 시설에 양자 얽힘 파편을 투입하면 간섭을 일시 차단할 수 있습니다.",color:"white"},{text:"\n"}]
