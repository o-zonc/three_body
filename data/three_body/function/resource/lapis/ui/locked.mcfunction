# 청금석(lapis) locked UI.
data modify storage three_body:resource input set from storage three_body:resource config.lapis.unlock_cost
tellraw @s [{"text":"[ 청금석 ] ","color":"blue","bold":true},{"text":"🔒 잠김","color":"red"},{"text":"\n해금 비용: ","color":"gray"},{"nbt":"amount","storage":"three_body:resource.input","color":"yellow"},{"text":" 청금석","color":"blue"}]
