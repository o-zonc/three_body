# 구리(copper) locked UI.
data modify storage three_body:resource input set from storage three_body:resource config.copper.unlock_cost
tellraw @s [{"text":"[ 구리 ] ","color":"gold","bold":true},{"text":"🔒 잠김","color":"red"},{"text":"\n해금 비용: ","color":"gray"},{"nbt":"amount","storage":"three_body:resource.input","color":"yellow"},{"text":" 구리","color":"gold"}]
