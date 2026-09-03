# 여명 차원 우는 흑요석 상호작용
# 공개된 우는 흑요석만 기존 수집 로직으로 처리한다. 공개는 중앙 창 상호작용이 전담한다.
execute in minecraft:dawn unless entity @e[type=minecraft:block_display,tag=crying_dawn_display] run return 0
execute in minecraft:dawn as @e[type=minecraft:block_display,tag=crying_dawn_display] run data merge entity @s {transformation:{translation:[0.0f,0.0f,0.0f],scale:[1.0f,1.0f,1.0f],left_rotation:[0.0f,0.0f,0.0f,1.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f]}}
function crying/collect {id:"dawn",x:-11,z:-11}
return 1
