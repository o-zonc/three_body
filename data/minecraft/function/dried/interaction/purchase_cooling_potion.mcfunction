# 냉각 물약 구매: 냉기 1개
data modify storage data tmp.cost set value [{type:"cold",amount:1}]
execute store result score #dried_purchase_check tmp run function resource/check_cost
execute unless score #dried_purchase_check tmp matches 1 run title @s actionbar {text:"냉기가 부족합니다.",color:"red",italic:true}
execute unless score #dried_purchase_check tmp matches 1 run return 0

function resource/cost/take
give @s minecraft:potion[minecraft:custom_name={text:'냉각 물약',color:'gold',italic:false},minecraft:lore=[{text:'메마른 세계의 난세기 폭염을 견딜 수 있게 해줍니다.',color:'gray',italic:false},{text:'현재 난세기 동안 발화 효과 무효',color:'yellow',italic:false}],minecraft:potion_contents={custom_color:3402751},minecraft:custom_data={dried_chaos_potion:1b}] 1
tag @s add dried_chaos_potion_pending
execute as @a at @s run playsound block.brewing_stand.brew master @s ~ ~ ~ 1 1.2
function dried/interaction/potion
return 1
