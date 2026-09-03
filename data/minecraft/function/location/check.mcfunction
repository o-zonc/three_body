# 매크로 인수: dimension, x, y, z, dx, dy, dz
$execute in $(dimension) if entity @a[tag=player,x=$(x),y=$(y),z=$(z),dx=$(dx),dy=$(dy),dz=$(dz),limit=1] run scoreboard players set #location_found tmp 1
