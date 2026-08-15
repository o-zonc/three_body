# data 저장소의 tmp.crystal_shop.dig_speed_up.tmp 경로에 해당 레벨 데이터를 저장

$data modify storage data tmp.crystal_shop.dig_speed_up.tmp set from storage data const.dimensions.overworld.shop.crystal_shop[{type:"dig_speed_up"}].costs[{lvl:$(lvl)}]