# 철기 시대에 자원 상점의 나무부터 철까지를 모두 한 번 이상 업그레이드하면 고대에 진입한다.
execute unless score #overworld civilization_age matches 4 run return 0
execute unless score #wood_lvl material_shop matches 1.. run return 0
execute unless score #stone_lvl material_shop matches 1.. run return 0
execute unless score #coal_lvl material_shop matches 1.. run return 0
execute unless score #copper_lvl material_shop matches 1.. run return 0
execute unless score #iron_lvl material_shop matches 1.. run return 0

advancement grant @a only 0_overworld/14_ancient_age
return 1
