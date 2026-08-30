data modify storage data tmp.cost set value [{type:"emerald",amount:10},{type:"lapis",amount:15}]
execute store result score #alchemy_potion_cost_ok tmp run function resource/check_cost
execute unless score #alchemy_potion_cost_ok tmp matches 1 run title @s actionbar {text:"황금 촉매를 연성할 재료가 부족합니다.",color:"red",italic:true}
execute unless score #alchemy_potion_cost_ok tmp matches 1 run return 0

function resource/cost/take
give @s minecraft:potion[minecraft:item_model="minecraft:honey_bottle",minecraft:custom_name={text:"황금 촉매",color:"gold",italic:false},minecraft:lore=[{text:"물약 - 마시기로 사용",color:"blue",italic:false},{text:""},{text:"5분 동안 성급함 II를 부여합니다.",color:"gray",italic:false}],minecraft:potion_contents={custom_color:16755200,custom_effects:[{id:"minecraft:haste",amplifier:1,duration:6000,show_particles:1b}]},minecraft:custom_data={alchemy_fever_potion:1b}] 1
playsound block.brewing_stand.brew master @s ~ ~ ~ 1 1.2
title @s actionbar {text:"황금 촉매를 연성했습니다.",color:"gold",italic:false}
return 1
