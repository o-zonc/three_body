execute if score #era unlock matches 1.. run return 0

data modify storage data tmp.cost set value [{type:"time",amount:2}]
execute store result score #era_cost_check tmp run function resource/check_cost
execute unless score #era_cost_check tmp matches 1 run title @s actionbar "§c시간 조각이 부족합니다."
execute unless score #era_cost_check tmp matches 1 at @s run playsound block.note_block.bass weather @s ~ ~ ~ 0.8 0.5
execute unless score #era_cost_check tmp matches 1 run return 0

function resource/cost/take
scoreboard players set #era unlock 1
# era interaction이 설치된 블록을 완전히 충전된 리스폰 정박기로 바꾼다.
execute at @e[type=interaction,tag=era,limit=1] run setblock ~ ~ ~ respawn_anchor[charges=4] replace
playsound block.respawn_anchor.charge weather @s ~ ~ ~ 1 1
playsound entity.player.levelup weather @s ~ ~ ~ 0.8 1.2
function common/era/interact
return 1
