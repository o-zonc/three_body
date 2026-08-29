function factory/recycle/prepare
execute store result score #factory_recycle_rate tmp run scoreboard players get #factory_recycle_level upgrade
scoreboard players set #factory_recycle_ten tmp 10
scoreboard players operation #factory_recycle_rate tmp *= #factory_recycle_ten tmp
data modify storage data tmp.factory_recycle.button set value {text:"[ 연구 완료 ]",color:"dark_gray",bold:true}
execute if data storage data tmp.cost run function resource/convert_discount_cost_to_text_named {id:"factory_recycle",insertion:", "}
execute if data storage data tmp.cost run data modify storage data tmp.factory_recycle.button set value {text:"[ 다음 단계 연구 ]",color:"aqua",bold:true,hover_event:{action:"show_text",value:["",{text:"§6[§7 필요한 재료 §6]\n"},{storage:"data",nbt:"tmp.cost_text.factory_recycle.text",interpret:true}]},click_event:{action:"run_command",command:"/trigger factory_trigger set 1731"}}
execute at @s run playsound ui.button.click weather @s ~ ~ ~ 1 2
function util/blank
tellraw @s ["",{text:"  [ 재처리 공장 ]",color:"green",bold:true},{text:"\n\n  시설에 투입된 물질 자원의 일부를 회수합니다.",color:"gray",bold:false},{text:"\n  • 연구 단계: ",color:"gray"},{score:{name:"#factory_recycle_level",objective:"upgrade"},color:"white"},{text:" / 4",color:"gray"},{text:"\n  • 현재 환급률: ",color:"gray"},{score:{name:"#factory_recycle_rate",objective:"tmp"},color:"green"},{text:"%",color:"green"},{text:"\n\n  Lv.1  공장 건설·업그레이드 비용 환급",color:"dark_gray"},{text:"\n  Lv.2  입자가속기 가동·업그레이드 비용 환급",color:"dark_gray"},{text:"\n  Lv.3  입자가속기 실험 비용 환급",color:"dark_gray"},{text:"\n  Lv.4  타임머신 색채 자원 연구 비용 환급",color:"dark_gray"},{text:"\n\n  "},{storage:"data",nbt:"tmp.factory_recycle.button",interpret:true},{text:"\n"}]
