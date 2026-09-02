function factory/energy/prepare
scoreboard players set #factory_energy_reduction tmp 0
execute if score #factory_energy_level upgrade matches 1 run scoreboard players set #factory_energy_reduction tmp 25
execute if score #factory_energy_level upgrade matches 2.. run scoreboard players set #factory_energy_reduction tmp 60
data modify storage data tmp.factory_energy.button set value {text:"[ 연구 완료 ]",color:"dark_gray",bold:true}
data modify storage data tmp.factory_energy.experiment set value {text:"비활성 (Lv.3)",color:"dark_gray"}
execute if score #factory_energy_level upgrade matches 3.. run data modify storage data tmp.factory_energy.experiment set value {text:"50% 감소",color:"aqua"}
execute if data storage data tmp.cost run function resource/convert_discount_cost_to_text_named {id:"factory_energy",insertion:", "}
execute if data storage data tmp.cost run data modify storage data tmp.factory_energy.button set value {text:"[ 다음 단계 연구 ]",color:"aqua",bold:true,hover_event:{action:"show_text",value:["",{text:"§6[§7 필요한 재료 §6]\n"},{storage:"data",nbt:"tmp.cost_text.factory_energy.text",interpret:true}]},click_event:{action:"run_command",command:"/trigger factory_trigger set 1732"}}
execute at @s run playsound ui.button.click weather @s ~ ~ ~ 1 2
function util/blank
tellraw @s ["",{text:"  [ 산업 연구 · 태양광 발전 ]",color:"yellow",bold:true},{text:"\n\n  공장의 석탄 의존도를 낮추는 에너지 기술을 연구합니다.",color:"gray",bold:false},{text:"\n\n  • 연구 단계: ",color:"gray"},{score:{name:"#factory_energy_level",objective:"upgrade"},color:"white"},{text:" / 3",color:"gray"},{text:"\n  • 공장 석탄 소비 감소: ",color:"gray"},{score:{name:"#factory_energy_reduction",objective:"tmp"},color:"yellow"},{text:"% 감소",color:"yellow"},{text:"\n  • 입자가속기 실험 비용: ",color:"gray"},{storage:"data",nbt:"tmp.factory_energy.experiment",interpret:true},{text:"\n\n  Lv.1  석탄 소비 25% 감소",color:"dark_gray"},{text:"\n  Lv.2  석탄 소비 60% 감소",color:"dark_gray"},{text:"\n  Lv.3  입자가속기 실험 비용 50% 감소",color:"dark_gray"},{text:"\n\n  "},{storage:"data",nbt:"tmp.factory_energy.button",interpret:true},{text:"\n"}]
