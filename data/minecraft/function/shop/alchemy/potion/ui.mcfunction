# 연금술 공방 물약 상점
execute unless score #alchemy_workshop unlock matches 1 run title @s actionbar {text:"연금술 공방을 먼저 해금해야 합니다.",color:"red",italic:true}
execute unless score #alchemy_workshop unlock matches 1 run return 0

data modify storage data tmp.cost set value [{type:"emerald",amount:10},{type:"lapis",amount:15}]
function resource/convert_cost_to_text_named {id:"alchemy_fever_potion",insertion:", "}
data modify storage data tmp.cost set value [{type:"emerald",amount:40},{type:"lapis",amount:60},{type:"information",amount:3},{type:"time",amount:1}]
function resource/convert_cost_to_text_named {id:"alchemy_chaos_end_potion",insertion:", "}
function shop/alchemy/potion/prepare_cooldown

execute at @s run playsound ui.button.click weather @s ~ ~ ~ 1 2
function util/blank
tellraw @s ["",{text:"  [ 연금술 물약 상점 ]",color:"light_purple",bold:true,shadow_color:-16777216}]

# 공방 단계에 따라 현재 구매 가능한 카탈리스트 등급을 자동으로 표시합니다.
execute if score #level alchemy_workshop matches 0 run tellraw @s ["",{text:"\n  "},{text:"[ 카탈리스트 I ]",color:"gold",bold:true,hover_event:{action:"show_text",value:[{text:"등급: I\n",color:"gold"},{text:"채굴 자원 획득량: ×2\n",color:"yellow"},{text:"지속 시간: 1분\n",color:"gray"},{text:"능동 채굴로 직접 획득하는 자원에만 적용됩니다.\n\n",color:"dark_gray"},{text:"[ 필요한 재료 ]\n",color:"gold"},{storage:"data",nbt:"tmp.cost_text.alchemy_fever_potion.text",interpret:true}]},click_event:{action:"run_command",command:"/trigger shop_trigger set 1541"}},{text:"\n  짧은 시간 동안 직접 채굴 효율을 크게 끌어올립니다.",color:"gray",bold:false}]
execute if score #level alchemy_workshop matches 1 run tellraw @s ["",{text:"\n  "},{text:"[ 카탈리스트 II ]",color:"gold",bold:true,hover_event:{action:"show_text",value:[{text:"등급: II\n",color:"gold"},{text:"채굴 자원 획득량: ×3\n",color:"yellow"},{text:"지속 시간: 1분 30초\n",color:"gray"},{text:"능동 채굴로 직접 획득하는 자원에만 적용됩니다.\n\n",color:"dark_gray"},{text:"[ 필요한 재료 ]\n",color:"gold"},{storage:"data",nbt:"tmp.cost_text.alchemy_fever_potion.text",interpret:true}]},click_event:{action:"run_command",command:"/trigger shop_trigger set 1541"}},{text:"\n  짧은 시간 동안 직접 채굴 효율을 크게 끌어올립니다.",color:"gray",bold:false}]
execute if score #level alchemy_workshop matches 2.. run tellraw @s ["",{text:"\n  "},{text:"[ 카탈리스트 III ]",color:"gold",bold:true,hover_event:{action:"show_text",value:[{text:"등급: III\n",color:"gold"},{text:"채굴 자원 획득량: ×5\n",color:"yellow"},{text:"지속 시간: 2분\n",color:"gray"},{text:"능동 채굴로 직접 획득하는 자원에만 적용됩니다.\n\n",color:"dark_gray"},{text:"[ 필요한 재료 ]\n",color:"gold"},{storage:"data",nbt:"tmp.cost_text.alchemy_fever_potion.text",interpret:true}]},click_event:{action:"run_command",command:"/trigger shop_trigger set 1541"}},{text:"\n  짧은 시간 동안 직접 채굴 효율을 크게 끌어올립니다.",color:"gray",bold:false}]

execute unless score #catalyst_cooldown var matches 1.. run tellraw @s ["",{text:"  상태: ",color:"dark_gray"},{text:"구매 가능",color:"green"}]
execute if score #catalyst_cooldown var matches 1.. run tellraw @s ["",{text:"  다음 구매까지: ",color:"dark_gray"},{score:{name:"#catalyst_cd_minutes",objective:"tmp"},color:"gold"},{text:"분 ",color:"gray"},{score:{name:"#catalyst_cd_remainder",objective:"tmp"},color:"gold"},{text:"초",color:"gray"}]

# 난세기 종료 물약
 tellraw @s ["",{text:"\n  "},{text:"[ 난세기 종료 물약 ]",color:"light_purple",bold:true,hover_event:{action:"show_text",value:[{text:"현재 세계의 난세기를 즉시 종료합니다.\n소지 중에는 차원 이동기를 사용할 수 없습니다.\n\n",color:"gray"},{text:"[ 필요한 재료 ]\n",color:"gold"},{storage:"data",nbt:"tmp.cost_text.alchemy_chaos_end_potion.text",interpret:true}]},click_event:{action:"run_command",command:"/trigger shop_trigger set 1542"}},{text:"\n  자연 멸망이 발생하면 사용하지 않은 물약은 사라집니다.\n",color:"dark_gray",bold:false}]
