# 다이아몬드(diamond) locked UI.
data modify storage three_body:resource input set from storage three_body:resource config.diamond.unlock_cost
tellraw @s [{"text":"[ 다이아몬드 ] ","color":"aqua","bold":true},{"text":"🔒 잠김","color":"red"},{"text":"\n해금 비용: ","color":"gray"},{"nbt":"amount","storage":"three_body:resource.input","color":"yellow"},{"text":" 다이아몬드","color":"aqua"}]
