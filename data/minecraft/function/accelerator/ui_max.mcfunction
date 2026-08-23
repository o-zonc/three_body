function util/blank

tellraw @s [{text:"  [ 입자가속기 ]",color:"aqua",bold:true},{text:"\n\n  최대 출력으로 가동 중입니다.",color:"gray"},{text:"\n  • 현재 레벨: 4 / 4",color:"white"}]

tellraw @s [{text:"\n  [ 양자 충돌 실험 ]",color:"aqua",bold:true,click_event:{action:"run_command",command:"/trigger accelerator_trigger set 10"}},{text:"\n  기본적인 양자 충돌을 관측합니다. 최대 레벨에서는 고급 파편 발견 확률이 가장 높습니다.",color:"gray"}]

tellraw @s [{text:"\n  [ 중입자 충돌 실험 ]",color:"light_purple",bold:true,click_event:{action:"run_command",command:"/trigger accelerator_trigger set 11"}},{text:"\n  세 등급의 양자 얽힘 파편을 각각 독립적으로 추출합니다.",color:"gray"}]

tellraw @s [{text:"\n  [ 시공간 붕괴 실험 ]",color:"#F971BE",bold:true,click_event:{action:"run_command",command:"/trigger accelerator_trigger set 12"}},{text:"\n  대량의 양자 얽힘 파편과 흑요석 1개를 획득합니다.",color:"gray"},{text:"\n"}]
