# 돌(stone) locked UI.
data modify storage three_body:resource input set from storage three_body:resource config.stone.unlock_cost
tellraw @s [{"text":"[ 돌 ] ","color":"gray","bold":true},{"text":"🔒 잠김","color":"red"},{"text":"\n해금 비용: ","color":"gray"},{"nbt":"amount","storage":"three_body:resource.input","color":"yellow"},{"text":" 돌","color":"gray"}]
