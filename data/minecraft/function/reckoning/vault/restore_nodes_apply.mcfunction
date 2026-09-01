# 청크 로드가 적용된 뒤 모든 해금 노드를 실제 배치한다.
execute if score #wood unlock matches 1 in minecraft:overworld run function resource/material/wood/place
execute if score #stone unlock matches 1 in minecraft:overworld run function resource/material/stone/place
execute if score #coal unlock matches 1 in minecraft:overworld run function resource/material/coal/place
execute if score #copper unlock matches 1 in minecraft:overworld run function resource/material/copper/place
execute if score #iron unlock matches 1 in minecraft:overworld run function resource/material/iron/place
execute if score #emerald unlock matches 1 in minecraft:overworld run function resource/material/emerald/place
execute if score #lapis unlock matches 1 in minecraft:overworld run function resource/material/lapis/place
execute if score #gold unlock matches 1 in minecraft:dried run function resource/material/gold/place
execute if score #heat unlock matches 1 in minecraft:dried run function resource/material/heat/place
execute if score #diamond unlock matches 1 in minecraft:frozen run function resource/material/diamond/place
execute if score #cold unlock matches 1 in minecraft:frozen run function resource/material/cold/place
schedule function reckoning/vault/restore_nodes_release 1t replace
