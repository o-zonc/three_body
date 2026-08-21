execute at @s run playsound ui.button.click weather @s ~ ~ ~ 1 2
function util/blank
execute if score #GLOBAL accelerator_level matches 0 run tellraw @s ["",{text:"  [ 입자가속기 ]",color:"aqua",bold:true},{text:"\n\n  양자 규모의 실험으로 정보와 양자 얽힘 파편을 생성합니다.",color:"gray"},{text:"\n  • 현재 레벨: 0 / 4",color:"gray"},{text:"\n  • 업그레이드: 철 100,000 / 시간 1",color:"yellow"},{text:"\n\n  [ 입자가속기 가동 ]",color:"aqua",bold:true,click_event:{action:"run_command",command:"/trigger accelerator_trigger set 1"}},{text:"\n"}]
execute if score #GLOBAL accelerator_level matches 1..3 run function accelerator/ui_active
execute if score #GLOBAL accelerator_level matches 4 run function accelerator/ui_max
