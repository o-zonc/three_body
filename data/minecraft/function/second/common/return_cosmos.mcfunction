# 매크로 인수: next_story
# 1~4장 종료 시 공통으로 사용하는 우주 복귀 처리이다.
function cosmos/move
tag @s remove second
tag @s remove third
scoreboard players set @s second_step 0
scoreboard players set @s second_timer 0
$scoreboard players set @s second_story $(next_story)
