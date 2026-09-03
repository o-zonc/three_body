# 연금술 공방 interaction 중복 복구용 일회성 함수
# 실행 명령: /function shop/alchemy/deduplicate_interactions
# 공방 내부에서 사용하는 역할 태그별로 하나만 남기고 나머지를 제거한다.

execute in overworld run tag @e[type=interaction,tag=alchemy_dedup_keep,x=-40,y=-64,z=-40,dx=40,dy=32,dz=40] remove alchemy_dedup_keep
execute in overworld store result score #alchemy_dedup_before tmp run execute if entity @e[type=interaction,x=-40,y=-64,z=-40,dx=40,dy=32,dz=40]

execute in overworld run function shop/alchemy/deduplicate_role {role:"shop"}
execute in overworld run function shop/alchemy/deduplicate_role {role:"jewel"}
execute in overworld run function shop/alchemy/deduplicate_role {role:"lab"}
execute in overworld run function shop/alchemy/deduplicate_role {role:"potion"}
execute in overworld run function shop/alchemy/deduplicate_role {role:"emerald"}
execute in overworld run function shop/alchemy/deduplicate_role {role:"gold"}

# 이동기 구매 단말은 item 공통 태그와 이동기별 역할 태그의 조합으로 구분한다.
execute in overworld run function shop/alchemy/deduplicate_item_role {role:"dimension"}
execute in overworld run function shop/alchemy/deduplicate_item_role {role:"shop"}
execute in overworld run function shop/alchemy/deduplicate_item_role {role:"alchemy"}
execute in overworld run function shop/alchemy/deduplicate_item_role {role:"dried"}
execute in overworld run function shop/alchemy/deduplicate_item_role {role:"frozen"}
execute in overworld run function shop/alchemy/deduplicate_item_role {role:"overworld"}
execute in overworld run function shop/alchemy/deduplicate_item_role {role:"cosmos"}

execute in overworld run tag @e[type=interaction,tag=alchemy_dedup_keep,x=-40,y=-64,z=-40,dx=40,dy=32,dz=40] remove alchemy_dedup_keep
execute in overworld store result score #alchemy_dedup_after tmp run execute if entity @e[type=interaction,x=-40,y=-64,z=-40,dx=40,dy=32,dz=40]
scoreboard players operation #alchemy_dedup_removed tmp = #alchemy_dedup_before tmp
scoreboard players operation #alchemy_dedup_removed tmp -= #alchemy_dedup_after tmp
tellraw @s [{text:"[연금술 공방 interaction 정리] ",color:"light_purple",bold:true},{text:"정리 전 ",color:"gray"},{score:{name:"#alchemy_dedup_before",objective:"tmp"},color:"white"},{text:"개 → 정리 후 ",color:"gray"},{score:{name:"#alchemy_dedup_after",objective:"tmp"},color:"green"},{text:"개 (제거 ",color:"gray"},{score:{name:"#alchemy_dedup_removed",objective:"tmp"},color:"red"},{text:"개)",color:"gray"}]
