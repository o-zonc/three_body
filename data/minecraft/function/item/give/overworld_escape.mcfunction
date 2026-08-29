# 리액터 이동으로 진행이 막힌 플레이어에게만 지급되는 일회용 귀환 장치입니다.
clear @s minecraft:green_dye[minecraft:custom_data~{overworld_escape:1b}]
function item/give/to_inventory {item:'minecraft:green_dye[minecraft:custom_name={text:"오버월드 탈출기",color:"green",italic:false},minecraft:custom_data={overworld_escape:1b},minecraft:lore=[{text:"기계 - 웅크리기로 사용",color:"blue",italic:false},{text:""},{text:"오버월드로 긴급 귀환합니다.",color:"gray",italic:false},{text:"한 번 사용하면 사라집니다.",color:"dark_gray",italic:true}],minecraft:item_model="wild_armor_trim_smithing_template"]',amount:1}
title @s actionbar {text:"채굴 가능한 자원이 없어 오버월드 탈출기가 지급되었습니다.",color:"green"}
