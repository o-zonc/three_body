execute at @s run playsound ui.button.click weather @s ~ ~ ~ 1 2
function util/blank

# 아직 현대에 도달하지 않았다면 시설을 잠금 상태로 안내합니다.
execute if score #GLOBAL accelerator_level matches 0 unless score #overworld civilization_age matches 8.. run tellraw @s ["",{text:"  [ 입자가속기 ]",color:"aqua",bold:true},{text:"\n\n  입자의 충돌을 관측해 정보와 양자 얽힘 파편을 생성하는 시설입니다.",color:"gray"},{text:"\n\n  현대에 도달해야 가동할 수 있습니다.",color:"red"},{text:"\n"}]
execute if score #GLOBAL accelerator_level matches 0 unless score #overworld civilization_age matches 8.. run return 0

# 시공간 붕괴 실험 실패로 장기 고장 상태가 된 경우 수리 UI만 표시합니다.
execute if score #GLOBAL accelerator_disabled matches 1 run tellraw @s [{text:"  [ 입자가속기 - 손상 ]",color:"dark_red",bold:true},{text:"\n\n  시공간 붕괴의 여파로 핵심 장치가 손상되었습니다.",color:"gray"},{text:"\n  • 자동 수리까지 남은 시간: ",color:"gray"},{score:{name:"#GLOBAL",objective:"accelerator_repair_timer"},color:"white"},{text:"틱",color:"gray"},{text:"\n  • 수동 재가동 비용: 철 100,000 / 소지한 시간 2",color:"yellow"},{text:"\n\n  [ 수동 재가동 ]",color:"green",bold:true,click_event:{action:"run_command",command:"/trigger accelerator_trigger set 2"}},{text:"\n"}]
execute if score #GLOBAL accelerator_disabled matches 1 run return 0

execute if score #GLOBAL accelerator_level matches 0 run tellraw @s ["",{text:"  [ 입자가속기 ]",color:"aqua",bold:true},{text:"\n\n  양자 규모의 실험으로 정보와 양자 얽힘 파편을 생성합니다.",color:"gray"},{text:"\n  • 현재 레벨: 0 / 4",color:"gray"},{text:"\n  • 가동 비용: 철 100,000 / 소지한 시간 1",color:"yellow"},{text:"\n\n  [ 입자가속기 가동 ]",color:"aqua",bold:true,click_event:{action:"run_command",command:"/trigger accelerator_trigger set 1"}},{text:"\n"}]
execute if score #GLOBAL accelerator_level matches 1..3 run function accelerator/ui_active
execute if score #GLOBAL accelerator_level matches 4 run function accelerator/ui_max
