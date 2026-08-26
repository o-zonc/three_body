# 보온 물약 구매: 냉기 1개
execute unless score #frozen_shop unlock matches 1.. run title @s actionbar {text:"얼어붙은 세계의 상점이 잠겨 있습니다.",color:"red"}
execute unless score #frozen_shop unlock matches 1.. run return 0

data modify storage data tmp.cost set value [{type:"cold",amount:1}]
execute store result score #frozen_purchase_check tmp run function resource/check_cost
execute unless score #frozen_purchase_check tmp matches 1 run title @s actionbar {text:"냉기가 부족합니다.",color:"red"}
execute unless score #frozen_purchase_check tmp matches 1 run return 0

function resource/cost/take
give @s minecraft:potion[minecraft:custom_name={text:'보온 물약',color:'aqua',italic:false},minecraft:lore=[{text:'얼어붙은 세계의 난세기 한파를 버틸 수 있게 해줍니다.',color:'gray',italic:false},{text:'성급함 II · 5분',color:'dark_aqua',italic:false}],minecraft:potion_contents={custom_color:5636095,custom_effects:[{id:'minecraft:haste',amplifier:1,duration:6000,ambient:false,show_particles:true,show_icon:true}]},minecraft:custom_data={frozen_chaos_potion:1b}] 1
tag @s add frozen_chaos_potion_pending
playsound entity.experience_orb.pickup weather @s ~ ~ ~ 0.8 1.2
function frozen/interaction/shop
return 1
