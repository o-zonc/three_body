# 매크로 인수: id, dim, block, x, y, z
$execute unless score #$(id) factory_unlocked matches 1 run return 0
$execute unless score #$(id) factory_enabled matches 1 run return 0
$execute if score #$(id) factory_timer matches 1.. run scoreboard players remove #$(id) factory_timer 1
$execute if score #$(id) factory_timer matches 1.. run return 0
$execute in $(dim) unless block $(x) $(y) $(z) $(block) run return 0
$function factory/cycle {id:"$(id)",dim:"$(dim)",block:"$(block)",x:$(x),y:$(y),z:$(z)}
