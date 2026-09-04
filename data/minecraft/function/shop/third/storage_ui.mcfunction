# 매크로 인수: id, name, title, color, unit, bank_max, trigger, withdraw_trigger
function meta/sync
$function shop/third/storage_prepare {id:"$(id)"}
data modify storage data tmp.third_shop.button set value {text:"[ 확장 완료 ]",color:"dark_gray"}
data modify storage data tmp.third_shop.next set value {text:""}
data modify storage data tmp.third_shop.expansion_line set value {text:""}
data modify storage data tmp.third_shop.vault_line set value {text:""}
$data modify storage data tmp.third_shop.bank_limit set value {text:" / $(bank_max)$(unit)",color:"gray"}
$execute if score #$(id)_bank_unlocked meta matches 1.. run data modify storage data tmp.third_shop.bank_limit set value {text:" / ∞$(unit)",color:"gold"}
execute if score #third_lvl tmp matches ..2 run function resource/convert_cost_to_text_named {id:"third_storage",insertion:", "}
$execute if score #third_lvl tmp matches ..2 run data modify storage data tmp.third_shop.next set value {text:"\n  다음 단계 소지 한도: ",color:"gray",extra:[{score:{name:"#third_next_capacity",objective:"tmp"},color:"aqua"},{text:"$(unit)",color:"gray"}]}
$execute if score #third_lvl tmp matches ..2 run data modify storage data tmp.third_shop.button set value {text:"[ 소지 한도 확장 ]",color:"aqua",bold:true,hover_event:{action:"show_text",value:["",{text:"[",color:"gold"},{text:" 필요한 재료 ",color:"gray"},{text:"]\n",color:"gold"},{storage:"data",nbt:"tmp.cost_text.third_storage.text",interpret:true}]},click_event:{action:"run_command",command:"/trigger shop_trigger set $(trigger)"}}

# 공통 보관소 UI에서 극야 전용 시공간 확장과 보관 효과만 추가로 표시한다.
$execute if score #GLOBAL current_dim matches 3 run function shop/third/expansion/button/$(id)
$execute if score #GLOBAL current_dim matches 3 run function shop/third/vault/$(id)

execute at @s run playsound ui.button.click weather @s ~ ~ ~ 1 2
function util/blank
$tellraw @s ["",{text:"  [ $(name) $(title) ]",color:"$(color)",bold:true},{text:"\n\n  발전 단계: ",color:"gray"},{score:{name:"#third_lvl",objective:"tmp"},color:"white"},{text:" / 3",color:"gray"},{text:"\n  소지량: ",color:"gray"},{score:{name:"#third_wallet",objective:"tmp"},color:"white"},{text:" / ",color:"gray"},{score:{name:"#third_capacity",objective:"tmp"},color:"white"},{text:"$(unit)",color:"gray"},{text:"\n  보관량: ",color:"gray"},{score:{name:"#third_bank",objective:"tmp"},color:"$(color)"},{storage:"data",nbt:"tmp.third_shop.bank_limit",interpret:true},{storage:"data",nbt:"tmp.third_shop.next",interpret:true},{text:"\n\n  획득량 중 소지 한도 초과분은 자동 보관됩니다.",color:"dark_gray",italic:true},{text:"\n\n  자동 인출은 해금 기준 보관량을 남겨 두고 초과분만 사용됩니다.",color:"dark_gray",italic:true},{text:"\n\n  "},{storage:"data",nbt:"tmp.third_shop.button",interpret:true},{text:"\n  "},{text:"[ 소지 한도까지 인출 ]",color:"$(color)",bold:true,click_event:{action:"run_command",command:"/trigger shop_trigger set $(withdraw_trigger)"}},{storage:"data",nbt:"tmp.third_shop.expansion_line",interpret:true},{storage:"data",nbt:"tmp.third_shop.vault_line",interpret:true},{text:"\n"}]
