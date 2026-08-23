function util/blank

tellraw @s [{text:"  [ 입자가속기 ]",color:"aqua",bold:true},{text:"\n\n  양자 규모의 충돌 실험으로 정보와 양자 얽힘 파편을 생성합니다.",color:"gray",bold:false},{text:"\n  • 현재 레벨: ",color:"gray",bold:false},{score:{name:"#GLOBAL",objective:"accelerator_level"},color:"white",bold:false},{text:" / 4",color:"gray",bold:false},{text:"\n\n  "},{text:"충돌 실험은 실패할 수 있으며, 실패 시 정상 보상 대신 깨진 양자 얽힘 파편을 얻고 재정비 시간이 적용됩니다.",color:"dark_gray",italic:true,bold:false}]

tellraw @s [{text:"\n\n  [ 양자 충돌 실험 ]",color:"aqua",bold:true,click_event:{action:"run_command",command:"/trigger accelerator_trigger set 10"}},{text:"\n  기본적인 양자 충돌을 관측합니다. 레벨이 오를수록 고급 파편의 발견 확률이 증가합니다.",color:"gray",bold:false}]

execute if score #GLOBAL accelerator_level matches 2.. run tellraw @s [{text:"\n  [ 중입자 충돌 실험 ]",color:"light_purple",bold:true,click_event:{action:"run_command",command:"/trigger accelerator_trigger set 11"}},{text:"\n  더 높은 에너지로 중입자를 충돌시켜 세 등급의 양자 얽힘 파편을 동시에 탐색합니다.",color:"gray",bold:false}]
execute unless score #GLOBAL accelerator_level matches 2.. run tellraw @s [{text:"\n  [ 중입자 충돌 실험 ]",color:"dark_gray",bold:true},{text:"\n  입자가속기 Lv.2에서 해금됩니다.",color:"dark_gray",bold:false}]

execute if score #GLOBAL accelerator_level matches 4 run tellraw @s [{text:"\n  극한의 충돌로 국소적인 시공간 붕괴를 유도합니다. 대량의 파편과 흑요석을 획득합니다.",color:"gray",bold:false},{text:"\n\n  "},{text:"실패 시 정보 16과 시간 1을 잃으며, 손실을 감당할 수 없으면 입자가속기가 장기간 정지합니다.",color:"dark_gray",italic:true,bold:false},{text:"\n\n  [ 시공간 붕괴 실험 ]",color:"#F971BE",bold:true,click_event:{action:"run_command",command:"/trigger accelerator_trigger set 12"}}]
execute unless score #GLOBAL accelerator_level matches 4 run tellraw @s [{text:"\n  [ 시공간 붕괴 실험 ]",color:"dark_gray",bold:true},{text:"\n  입자가속기 Lv.4에서 해금됩니다.",color:"dark_gray",bold:false}]

execute if score #GLOBAL accelerator_level matches 1..3 run tellraw @s [{text:"\n\n  [ 다음 단계 업그레이드 ]",color:"yellow",bold:true,click_event:{action:"run_command",command:"/trigger accelerator_trigger set 1"}},{text:"\n"}]
execute if score #GLOBAL accelerator_level matches 4 run tellraw @s {text:"\n  최대 레벨에 도달했습니다.\n",color:"yellow",bold:false}
