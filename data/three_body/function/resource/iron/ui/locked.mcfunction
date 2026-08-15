# 철(iron) locked UI.
data modify storage three_body:resource input set from storage three_body:resource config.iron.unlock_cost
tellraw @s [{"text":"[ 철 ] ","color":"white","bold":true},{"text":"🔒 잠김","color":"red"},{"text":"\n해금 비용: ","color":"gray"},{"nbt":"amount","storage":"three_body:resource.input","color":"yellow"},{"text":" 철","color":"white"}]
