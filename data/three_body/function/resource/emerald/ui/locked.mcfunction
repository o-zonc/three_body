# 에메랄드(emerald) locked UI.
data modify storage three_body:resource input set from storage three_body:resource config.emerald.unlock_cost
tellraw @s [{"text":"[ 에메랄드 ] ","color":"green","bold":true},{"text":"🔒 잠김","color":"red"},{"text":"\n해금 비용: ","color":"gray"},{"nbt":"amount","storage":"three_body:resource.input","color":"yellow"},{"text":" 에메랄드","color":"green"}]
