# 결과 = (기본값 1 + get 보너스) × 1층 자원 상점 배수
execute store result score #production_amount tmp run function resource/production/base
$execute store result score #production_multiplier tmp run function resource/shop/value {id:"$(id)"}
$data modify storage data tmp.production_resource set value "$(id)"

execute if data storage data tmp{production_resource:"emerald"} run scoreboard players set #production_multiplier tmp 1
execute if data storage data tmp{production_resource:"lapis"} run scoreboard players set #production_multiplier tmp 1

scoreboard players operation #production_amount tmp *= #production_multiplier tmp
return run scoreboard players get #production_amount tmp