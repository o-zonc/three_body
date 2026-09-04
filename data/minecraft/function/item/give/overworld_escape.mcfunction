# 채굴 가능한 자원이 없어 진행이 막힌 플레이어에게만 지급되는 일회용 귀환 장치이다.
# 실제 인벤토리를 기준으로 허용된 귀환/차원 이동기가 하나라도 있으면 지급하지 않는다.
execute store result score #overworld_mover_count tmp run clear @s minecraft:green_dye[minecraft:custom_data~{overworld_move:1b}] 0
execute store result score #overworld_escape_count tmp run clear @s minecraft:green_dye[minecraft:custom_data~{overworld_escape:1b}] 0
execute store result score #dimension_mover_count tmp run clear @s minecraft:brick[minecraft:custom_data~{disaster:1b}] 0
execute if score #overworld_mover_count tmp matches 1.. run return 0
execute if score #overworld_escape_count tmp matches 1.. run return 0
execute if score #dimension_mover_count tmp matches 1.. run return 0

# 위 검사를 통과한 경우에만 정확히 한 개를 지급한다.
give @s minecraft:green_dye[minecraft:custom_name={text:"오버월드 탈출기",color:"green",italic:false},minecraft:custom_data={overworld_escape:1b},minecraft:lore=[{text:"기계 - 웅크리기로 사용",color:"blue",italic:false},{text:""},{text:"오버월드로 긴급 귀환합니다.",color:"gray",italic:false},{text:"한 번 사용하면 사라집니다.",color:"dark_gray",italic:true}],minecraft:item_model="wild_armor_trim_smithing_template"] 1
execute unless entity @a[tag=accelerator_experiment_running] run title @s actionbar {text:"채굴 불가능한 자원이 있어 오버월드 탈출기가 지급되었습니다.",color:"green",italic:false}
