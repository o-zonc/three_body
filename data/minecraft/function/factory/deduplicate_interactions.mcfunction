# 공장 interaction 중복 복구용 일회성 함수
# /function factory/deduplicate_interactions
# 공장에서 사용하는 역할 태그별로 하나만 남기고 나머지를 제거합니다.

execute in overworld run tag @e[type=interaction,tag=factory,tag=factory_dedup_keep] remove factory_dedup_keep
execute in overworld store result score #factory_dedup_before tmp run execute if entity @e[type=interaction,tag=factory,tag=!shop,x=-36,y=-64,z=0,dx=44,dy=32,dz=40]

execute in overworld run function factory/deduplicate_role {role:"future"}
execute in overworld run function factory/deduplicate_role {role:"store"}
execute in overworld run function factory/deduplicate_role {role:"time_machine"}
execute in overworld run function factory/deduplicate_role {role:"check"}
execute in overworld run function factory/deduplicate_role {role:"wood"}
execute in overworld run function factory/deduplicate_role {role:"stone"}
execute in overworld run function factory/deduplicate_role {role:"coal"}
execute in overworld run function factory/deduplicate_role {role:"copper"}
execute in overworld run function factory/deduplicate_role {role:"iron"}
execute in overworld run function factory/deduplicate_role {role:"gold"}
execute in overworld run function factory/deduplicate_role {role:"diamond"}
execute in overworld run function factory/deduplicate_role {role:"emerald"}
execute in overworld run function factory/deduplicate_role {role:"lapis"}
execute in overworld run function factory/deduplicate_role {role:"cold"}
execute in overworld run function factory/deduplicate_role {role:"heat"}
execute in overworld run function factory/deduplicate_role {role:"accelerator"}
execute in overworld run function factory/deduplicate_role {role:"shield"}

execute in overworld run tag @e[type=interaction,tag=factory,tag=factory_dedup_keep] remove factory_dedup_keep
execute in overworld store result score #factory_dedup_after tmp run execute if entity @e[type=interaction,tag=factory,tag=!shop,x=-36,y=-64,z=0,dx=44,dy=32,dz=40]
scoreboard players operation #factory_dedup_removed tmp = #factory_dedup_before tmp
scoreboard players operation #factory_dedup_removed tmp -= #factory_dedup_after tmp
tellraw @s [{text:"[공장 interaction 정리] ",color:"gold",bold:true},{text:"정리 전 ",color:"gray"},{score:{name:"#factory_dedup_before",objective:"tmp"},color:"white"},{text:"개 → 정리 후 ",color:"gray"},{score:{name:"#factory_dedup_after",objective:"tmp"},color:"green"},{text:"개 (제거 ",color:"gray"},{score:{name:"#factory_dedup_removed",objective:"tmp"},color:"red"},{text:"개)",color:"gray"}]
