# 기존 월드에서도 색채 자원 스코어가 안전한 기본값을 갖도록 합니다.
execute unless score #yellow material = #yellow material run scoreboard players set #yellow material 0
execute unless score #yellow_regen_lvl upgrade = #yellow_regen_lvl upgrade run scoreboard players set #yellow_regen_lvl upgrade 0
# 중입자 충돌 발전과제는 문명 정산을 넘어 유지되므로 영구 해금 키로 사용합니다.
execute if entity @a[advancements={0_overworld/22_heavy_ion_experiment=true}] run scoreboard players set #yellow unlock 1
execute unless score #yellow unlock matches 1 run setblock -35 -62 -2 air replace
execute unless score #yellow unlock matches 1 run return 0
function resource/block/tick {id:"yellow",x:-35,y:-62,z:-2}
