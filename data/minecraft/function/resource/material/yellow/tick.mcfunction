# 중입자 충돌 발전과제는 문명 정산을 넘어 유지되므로 영구 해금 키로 사용합니다.
execute unless score #yellow unlock matches 1 if entity @a[advancements={0_overworld/22_heavy_ion_experiment=true}] run scoreboard players set #yellow unlock 1
execute unless score #yellow unlock matches 1 run setblock -35 -62 -2 air replace
execute unless score #yellow unlock matches 1 run return 0

# 노랑 발전 트리 완성 보상: 연료 없이 노랑 자원을 자동 채굴합니다.
execute if entity @a[advancements={0_overworld/25_yellow_time_machine=true}] run function resource/color/auto_mine {id:"yellow",block:"yellow_glazed_terracotta",x:-35,y:-62,z:-2}

function resource/block/tick {id:"yellow",x:-35,y:-62,z:-2}
