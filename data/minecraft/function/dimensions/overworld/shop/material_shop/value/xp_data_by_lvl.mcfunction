# data 저장소의 tmp.material_shop.xp.tmp 경로에 해당 레벨 데이터를 저장

$data modify storage data tmp.material_shop.xp.tmp set from storage data const.dimensions.overworld.shop.material_shop[{type:"xp"}].costs[{lvl:$(lvl)}]