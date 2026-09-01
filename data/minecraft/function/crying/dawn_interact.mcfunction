# 여명 차원 우는 흑요석 상호작용
# 이미 공개된 뒤에는 기존 수집 로직을 실행합니다.
execute in minecraft:dawn if entity @e[type=minecraft:block_display,tag=crying_dawn_display] run function crying/collect {id:"dawn",x:-11,z:-11}
execute in minecraft:dawn if entity @e[type=minecraft:block_display,tag=crying_dawn_display] run return 0

# 세 증폭기의 색유리가 모두 점등된 뒤 창을 다시 상호작용해야 우는 흑요석이 공개됩니다.
execute in minecraft:dawn unless block 0 65 0 minecraft:orange_stained_glass run return 0
execute in minecraft:dawn unless block 0 66 0 minecraft:lime_stained_glass run return 0
execute in minecraft:dawn unless block 0 67 0 minecraft:light_blue_stained_glass run return 0
function crying/dawn_reveal

# 최초 공개 클릭에서는 수집까지 연속 실행하지 않습니다.
return 1
