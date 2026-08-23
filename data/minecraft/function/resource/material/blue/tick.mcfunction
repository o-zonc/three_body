# 기존 월드에서도 색채 자원 스코어가 안전한 기본값을 갖도록 합니다.
execute unless score #blue material = #blue material run scoreboard players set #blue material 0
execute unless score #blue_regen_lvl upgrade = #blue_regen_lvl upgrade run scoreboard players set #blue_regen_lvl upgrade 0
# 중입자 충돌 발전과제는 문명 정산을 넘어 유지되므로 영구 해금 키로 사용합니다.
execute if entity @a[advancements={0_overworld/22_heavy_ion_experiment=true}] run scoreboard players set #blue unlock 1
execute unless score #blue unlock matches 1 run setblock -35 -62 2 air replace
execute unless score #blue unlock matches 1 run return 0

# 파랑 발전 트리 완성 보상: 연료 없이 파랑 자원을 자동 채굴합니다.
execute if entity @a[advancements={0_overworld/25_blue_time_machine=true}] run function resource/color/auto_mine {id:"blue",block:"blue_glazed_terracotta",x:-35,y:-62,z:2}

function resource/block/tick {id:"blue",x:-35,y:-62,z:2}
