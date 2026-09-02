function test/color_event_status
execute unless score #color_resources_unlocked var matches 1 run tellraw @s {text:"[FAIL] 영구 해금 플래그가 1이 아닙니다.",color:"red"}
execute unless score #yellow unlock matches 1 run tellraw @s {text:"[FAIL] 노랑 unlock이 1이 아닙니다.",color:"red"}
execute unless score #blue unlock matches 1 run tellraw @s {text:"[FAIL] 파랑 unlock이 1이 아닙니다.",color:"red"}
execute in minecraft:overworld unless block -35 -62 -2 minecraft:yellow_glazed_terracotta run tellraw @s {text:"[FAIL] 오버월드 노랑 노드가 없습니다.",color:"red"}
execute in minecraft:overworld unless block -35 -62 2 minecraft:blue_glazed_terracotta run tellraw @s {text:"[FAIL] 오버월드 파랑 노드가 없습니다.",color:"red"}
execute if score #color_resources_unlocked var matches 1 if score #yellow unlock matches 1 if score #blue unlock matches 1 in minecraft:overworld if block -35 -62 -2 minecraft:yellow_glazed_terracotta if block -35 -62 2 minecraft:blue_glazed_terracotta run tellraw @s {text:"[PASS] 외계 자원 영구 해금과 두 노드가 일치합니다.",color:"green"}
