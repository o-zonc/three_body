# $(lvl)의 drill 한계 데이터를 tmp.drill_limit_data.tmp에 저장

$data modify storage data tmp.drill_limit_data.tmp set from storage data const.dimensions.overworld.drill.limit[{lvl:$(lvl)}]
