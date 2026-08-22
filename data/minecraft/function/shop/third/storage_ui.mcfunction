# Macro args: id, name, title, color, unit, bank_max, trigger, withdraw_trigger
function meta/sync
$function shop/third/storage_prepare {id:"$(id)"}
data modify storage data tmp.third_shop.button set value {text:"§8[ 확장 완료 ]"}
data modify storage data tmp.third_shop.next set value {text:""}
execute if score #third_lvl tmp matches ..2 run function resource/convert_cost_to_text_named {id:"third_storage",insertion:", "}
$execute if score #third_lvl tmp matches ..2 run data modify storage data tmp.third_shop.next set value {text:"\n  다음 단계 소지 한도: ",color:"gray",extra:[{score:{name:"#third_next_capacity",objective:"tmp"},color:"aqua"},{text:"$(unit)",color:"gray"}]}
$execute if score #third_lvl tmp matches ..2 run data modify storage data tmp.third_shop.button set value {text:"[ 소지 한도 확장 ]",color:"aqua",bold:true,hover_event:{action:"show_text",value:["",{text:"§6[§7 필요한 재료 §6]\n"},{storage:"data",nbt:"tmp.cost_text.third_storage.text",interpret:true}]},click_event:{action:"run_command",command:"/trigger shop_trigger set $(trigger)"}}
execute at @s run playsound ui.button.click weather @s ~ ~ ~ 1 2
function util/blank
$tellraw @s ["",{text:"  [ $(name) $(title) ]",color:"$(color)",bold:true},{text:"\n\n  발전 단계: ",color:"gray"},{score:{name:"#third_lvl",objective:"tmp"},color:"white"},{text:" / 3",color:"gray"},{text:"\n  소지량: ",color:"gray"},{score:{name:"#third_wallet",objective:"tmp"},color:"white"},{text:" / ",color:"gray"},{score:{name:"#third_capacity",objective:"tmp"},color:"white"},{text:"$(unit)",color:"gray"},{text:"\n  보관량: ",color:"gray"},{score:{name:"#third_bank",objective:"tmp"},color:"$(color)"},{text:" / $(bank_max)$(unit)",color:"gray"},{storage:"data",nbt:"tmp.third_shop.next",interpret:true},{text:"\n\n  "},{storage:"data",nbt:"tmp.third_shop.button",interpret:true},{text:"\n  "},{text:"[ 소지 한도까지 인출 ]",color:"$(color)",bold:true,click_event:{action:"run_command",command:"/trigger shop_trigger set $(withdraw_trigger)"}},{text:"\n\n  ※ 획득량 중 소지 한도 초과분은 자동 보관됩니다.",color:"dark_gray"},{text:"\n  ※ 정보 500개·시간 250개 보관 달성 시 해당 자원의 자동 인출이 영구 해금됩니다.",color:"dark_gray"},{text:"\n  ※ 자동 인출은 해금 기준 보관량을 남겨 두고 초과분만 사용합니다.",color:"dark_gray"},{text:"\n"}]

# 문명 정산 보호 램프는 극야의 보관소에서만 표시한다. 일반 상점 및 지갑에는 표시하지 않는다.
$execute if score #GLOBAL current_dim matches 3 run function shop/third/vault/$(id)
