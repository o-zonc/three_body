# data 저장소의 tmp.drop_data.tmp 경로에 const.resource.blaze.drop[{lvl:$(lvl)}] 값을 삽입

$data modify storage data tmp.drop_data.tmp set from storage data const.resource.blaze.drop[{lvl:$(lvl)}]
