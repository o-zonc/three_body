# 근대 이후 공장에서 나무, 돌, 석탄, 구리 자동화를 모두 해금하면 현대에 진입한다.
execute unless score #overworld civilization_age matches 7 run return 0
execute unless score #wood factory_unlocked matches 1.. run return 0
execute unless score #stone factory_unlocked matches 1.. run return 0
execute unless score #coal factory_unlocked matches 1.. run return 0
execute unless score #copper factory_unlocked matches 1.. run return 0

advancement grant @a only 0_overworld/17_contemporary_age
return 1
