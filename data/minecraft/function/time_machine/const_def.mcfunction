# 타임머신 연구 상수
# time_machine_level은 기존 연출과 호환되는 세대(1~4) 값으로 유지합니다.
# yellow/blue 연구는 upgrade objective의 가짜 플레이어로 누적합니다.
# 세대 상승 시 누적 연구 우세에 따라 yellow/blue/green 세대 특성을 확정합니다.

data modify storage data const.time_machine set value {base:[{lvl:1,amount:1,interval:1200},{lvl:2,amount:2,interval:1000},{lvl:3,amount:4,interval:800},{lvl:4,amount:8,interval:600}],research:[{step:1,color:50,broken:5,time:0},{step:2,color:75,broken:5,time:0},{step:3,color:100,broken:10,time:0},{step:4,color:150,broken:10,time:1},{step:5,color:200,broken:15,time:0},{step:6,color:250,broken:20,time:0},{step:7,color:300,broken:25,time:0},{step:8,color:400,broken:30,time:2},{step:9,color:500,broken:40,time:0},{step:10,color:650,broken:50,time:0},{step:11,color:800,broken:60,time:0},{step:12,color:1000,broken:80,time:4}],yellow_amount_bonus:1,blue_interval_reduction:25,milestone:{yellow_amount_bonus:2,blue_interval_reduction:75,green_amount_bonus:1,green_interval_reduction:15}}

# load/reload 시 현재 연구 상태에서 생산 성능 캐시를 한 번 복구합니다.
function time_machine/calculate
