function dried/relic/prepare
execute at @s run playsound ui.button.click weather @s ~ ~ ~ 1 2
function util/blank
tellraw @s ["",{text:"  [ 고대 문명 발굴 장치 ]",color:"gold",bold:true,shadow_color:-7710208},{text:"\n\n  먼 과거의 문명으로부터 발굴한 장치입니다.\n  메마른 세계에 머무는 동안 잊힌 물자를 주기적으로 회수합니다.",color:"gray"},{text:"\n\n  §8•§7 장치 레벨: ",bold:false},{score:{name:"#dried_relic_level",objective:"upgrade"},color:"white"},{text:"§7 / 4"},{text:"\n  §8•§7 회수 주기: "},{score:{name:"#dried_relic_interval",objective:"tmp"},color:"white"},{text:"§7틱"},{text:"\n  §8•§7 회수 수량: "},{score:{name:"#dried_relic_amount",objective:"tmp"},color:"white"},{text:"§7개"},{text:"\n  §8•§7 남은 시간: "},{score:{name:"#dried_relic_timer",objective:"generate"},color:"white"},{text:"§7틱"}]
execute if score #dried_relic_level upgrade matches 4.. run tellraw @s ["",{text:"\n\n  ✔ 최고 레벨",color:"green"},{text:"\n"}]
execute if score #dried_relic_level upgrade matches ..3 run data modify storage data tmp.cost set from storage data tmp.dried_relic.cost
execute if score #dried_relic_level upgrade matches ..3 run function resource/convert_cost_to_text_named {id:"dried_relic",insertion:", "}
execute if score #dried_relic_level upgrade matches ..3 run tellraw @s ["",{text:"\n\n  "},{text:"[ 장치 업그레이드 ]",color:"gold",bold:true,hover_event:{action:"show_text",value:["",{text:"§6[§7 필요한 재료 §6]\n"},{storage:"data",nbt:"tmp.cost_text.dried_relic.text",interpret:true}]},click_event:{action:"run_command",command:"/trigger shop_trigger set 2001"}},{text:"\n"}]
