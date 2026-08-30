data modify storage data tmp.cost set value [{type:"emerald",amount:40},{type:"lapis",amount:60},{type:"information",amount:3},{type:"time",amount:1}]
execute store result score #alchemy_potion_cost_ok tmp run function resource/check_cost
execute unless score #alchemy_potion_cost_ok tmp matches 1 run title @s actionbar {text:"난세기 종료 물약을 연성할 재료가 부족합니다.",color:"red",italic:true}
execute unless score #alchemy_potion_cost_ok tmp matches 1 run return 0

function resource/cost/take
give @s minecraft:potion[minecraft:custom_name={text:"난세기 종료 물약",color:"light_purple",italic:false},minecraft:lore=[{text:"물약 - 마시기로 사용",color:"blue",italic:false},{text:""},{text:"현재 세계의 난세기를 즉시 종료합니다.",color:"gray",italic:false},{text:"소지 중에는 차원 이동기를 사용할 수 없습니다.",color:"red",italic:false}],minecraft:potion_contents={potion:"minecraft:invisibility"},minecraft:custom_data={chaos_end_potion:1b}] 1
playsound block.brewing_stand.brew master @s ~ ~ ~ 1 0.7
title @s actionbar {text:"난세기 종료 물약을 연성했습니다.",color:"light_purple",italic:false}
return 1
