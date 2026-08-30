# Macro args: id, block, x, y, z
# 발전과제 보상용 무연료 자동 채굴기입니다.
# 공장과 동일하게 실제 자원 블록을 파괴하고, 기존 harvest/cooldown/place 흐름을 그대로 사용합니다.
$execute unless score #$(id)_auto_mine_timer generate = #$(id)_auto_mine_timer generate run scoreboard players set #$(id)_auto_mine_timer generate 20
$execute if score #$(id)_auto_mine_timer generate matches 1.. run scoreboard players remove #$(id)_auto_mine_timer generate 1
$execute if score #$(id)_auto_mine_timer generate matches 1.. run return 0
$scoreboard players set #$(id)_auto_mine_timer generate 20
$execute if block $(x) $(y) $(z) $(block) run scoreboard players set #$(id)_automated_harvest var 1
$execute if block $(x) $(y) $(z) $(block) run setblock $(x) $(y) $(z) air destroy
