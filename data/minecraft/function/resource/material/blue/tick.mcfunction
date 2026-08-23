# 중입자 충돌 발전과제는 문명 정산을 넘어 유지되므로 영구 해금 키로 사용합니다.
execute if entity @a[advancements={0_overworld/22_heavy_ion_experiment=true}] run scoreboard players set #blue unlock 1
execute unless score #blue unlock matches 1 run setblock -35 -62 2 air replace
execute unless score #blue unlock matches 1 run return 0
function resource/block/tick {id:"blue",x:-35,y:-62,z:2}
