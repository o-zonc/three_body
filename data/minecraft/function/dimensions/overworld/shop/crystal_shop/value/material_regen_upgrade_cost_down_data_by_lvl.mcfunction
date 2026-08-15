# data 저장소의 tmp.crystal_shop.material_regen_upgrade_cost_down.tmp 경로에 해당 레벨 데이터를 저장

$data modify storage data tmp.crystal_shop.material_regen_upgrade_cost_down.tmp set from storage data const.dimensions.overworld.shop.crystal_shop[{type:"material_regen_upgrade_cost_down"}].costs[{lvl:$(lvl)}]