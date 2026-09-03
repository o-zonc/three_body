# 첫 입자가속기 실험 완료 기록을 영구 해금 키로 사용한다.
execute unless score #blue unlock matches 1 if score #color_resources_unlocked var matches 1 run scoreboard players set #blue unlock 1
execute unless score #blue unlock matches 1 in minecraft:overworld run setblock -35 -62 2 air replace
execute unless score #blue unlock matches 1 run scoreboard players reset #blue_remain generate
execute unless score #blue unlock matches 1 run scoreboard players set #blue_automated_harvest var 0
execute unless score #blue unlock matches 1 run return 0

# 파랑 발전 트리 완성 보상: 연료 없이 파랑 자원을 자동 채굴한다.
execute unless score #GLOBAL era_paused matches 1 if entity @a[advancements={0_overworld/25_blue_time_machine=true}] run function resource/color/auto_mine {id:"blue",block:"blue_glazed_terracotta",x:-35,y:-62,z:2}

execute in minecraft:overworld run function resource/block/tick {id:"blue",block:"blue_glazed_terracotta",x:-35,y:-62,z:2}
