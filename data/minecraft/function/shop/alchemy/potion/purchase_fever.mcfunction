# 카탈리스트는 구매 후 10분 동안 다시 연성할 수 없습니다.
execute if score #catalyst_cooldown var matches 1.. run function shop/alchemy/potion/prepare_cooldown
execute if score #catalyst_cooldown var matches 1.. run title @s actionbar [{text:"카탈리스트 재연성까지 ",color:"red",italic:true},{score:{name:"#catalyst_cd_minutes",objective:"tmp"},color:"white",italic:true},{text:"분 ",color:"red",italic:true},{score:{name:"#catalyst_cd_remainder",objective:"tmp"},color:"white",italic:true},{text:"초 남았습니다.",color:"red",italic:true}]
execute if score #catalyst_cooldown var matches 1.. run return 0

data modify storage data tmp.cost set value [{type:"emerald",amount:10},{type:"lapis",amount:15}]
execute store result score #alchemy_potion_cost_ok tmp run function resource/check_cost
execute unless score #alchemy_potion_cost_ok tmp matches 1 run title @s actionbar {text:"카탈리스트를 연성할 재료가 부족합니다.",color:"red",italic:true}
execute unless score #alchemy_potion_cost_ok tmp matches 1 run return 0

function resource/cost/take

# 공방 단계에 맞는 카탈리스트를 자동으로 지급합니다.
execute if score #level alchemy_workshop matches 0 run give @s minecraft:potion[minecraft:item_model="minecraft:potion",minecraft:custom_name={text:"카탈리스트 I",color:"gold",italic:false},minecraft:lore=[{text:"물약 - 마시기로 사용",color:"blue",italic:false},{text:""},{text:"등급: I",color:"gold",italic:false},{text:"채굴 자원 획득량 ×2",color:"yellow",italic:false},{text:"지속 시간: 1분",color:"gray",italic:false}],minecraft:potion_contents={custom_color:9643043},minecraft:custom_data={alchemy_fever_potion:1b,catalyst_level:1b}] 1
execute if score #level alchemy_workshop matches 1 run give @s minecraft:potion[minecraft:item_model="minecraft:potion",minecraft:custom_name={text:"카탈리스트 II",color:"gold",italic:false},minecraft:lore=[{text:"물약 - 마시기로 사용",color:"blue",italic:false},{text:""},{text:"등급: II",color:"gold",italic:false},{text:"채굴 자원 획득량 ×3",color:"yellow",italic:false},{text:"지속 시간: 1분 30초",color:"gray",italic:false}],minecraft:potion_contents={custom_color:9643043},minecraft:custom_data={alchemy_fever_potion:1b,catalyst_level:2b}] 1
execute if score #level alchemy_workshop matches 2.. run give @s minecraft:potion[minecraft:item_model="minecraft:potion",minecraft:custom_name={text:"카탈리스트 III",color:"gold",italic:false},minecraft:lore=[{text:"물약 - 마시기로 사용",color:"blue",italic:false},{text:""},{text:"등급: III",color:"gold",italic:false},{text:"채굴 자원 획득량 ×5",color:"yellow",italic:false},{text:"지속 시간: 2분",color:"gray",italic:false}],minecraft:potion_contents={custom_color:9643043},minecraft:custom_data={alchemy_fever_potion:1b,catalyst_level:3b}] 1

scoreboard players set #catalyst_cooldown var 12000
playsound block.brewing_stand.brew master @s ~ ~ ~ 1 1.2
execute if score #level alchemy_workshop matches 0 run title @s actionbar {text:"카탈리스트 I를 연성했습니다.",color:"gold",italic:false}
execute if score #level alchemy_workshop matches 1 run title @s actionbar {text:"카탈리스트 II를 연성했습니다.",color:"gold",italic:false}
execute if score #level alchemy_workshop matches 2.. run title @s actionbar {text:"카탈리스트 III를 연성했습니다.",color:"gold",italic:false}
return 1
