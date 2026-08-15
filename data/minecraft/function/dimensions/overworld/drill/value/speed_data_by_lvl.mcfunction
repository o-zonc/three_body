# $(lvl)의 drill 속도 데이터를 tmp.drill_speed_data.tmp에 저장

$data modify storage data tmp.drill_speed_data.tmp set from storage data const.dimensions.overworld.drill.speed[{lvl:$(lvl)}]
