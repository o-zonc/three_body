# 여명 중앙의 실제 작업 대상은 0,0 청크 하나뿐입니다.
execute if score #dawn_reset_pending var matches 1 run return 0
scoreboard players set #dawn_reset_pending var 1
scoreboard players set #dawn_reset_forceload_owned var 0
execute in minecraft:dawn store success score #dawn_reset_forceload_owned var run forceload add 0 0
schedule function crying/dawn_reset_finish 2t replace
