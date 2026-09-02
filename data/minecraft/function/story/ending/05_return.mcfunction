# 엔딩 전용 카메라와 배경을 정리하고, 저장한 차원·위치·시선으로 복귀합니다.
title @a[tag=ending_active] clear
execute as @a[tag=ending_active] run spectate
kill @e[tag=story_ending]

execute in minecraft:overworld as @a[tag=ending_active,tag=ending_from_overworld] run function mover/local/return
execute in minecraft:dried as @a[tag=ending_active,tag=ending_from_dried] run function mover/local/return
execute in minecraft:frozen as @a[tag=ending_active,tag=ending_from_frozen] run function mover/local/return
execute in polarnight as @a[tag=ending_active,tag=ending_from_polarnight] run function mover/local/return
execute in minecraft:dawn as @a[tag=ending_active,tag=ending_from_dawn] run function mover/local/return

gamemode adventure @a[tag=ending_active]
tag @a[tag=ending_active] remove ending_active
tag @a remove ending_from_overworld
tag @a remove ending_from_dried
tag @a remove ending_from_frozen
tag @a remove ending_from_polarnight
tag @a remove ending_from_dawn

# 엔딩 전의 시대 정지 상태를 그대로 복원하고, 보스바 표시를 다시 갱신합니다.
scoreboard players operation #GLOBAL era_paused = #ending_era_paused era_paused
execute if score #ending_advance_time var matches 1 run gamerule advance_time true
execute unless score #ending_advance_time var matches 1 run gamerule advance_time false
function ui/bossbar/update
execute if score #catalyst_timer var matches 1.. run bossbar set catalyst_fever visible true
execute unless score #catalyst_timer var matches 1.. run bossbar set catalyst_fever visible false

function ui/sidebar/refresh
scoreboard objectives setdisplay sidebar material_display

function util/blank
tellraw @a ["",{text:"\n  [ 엔딩 ]\n",color:"#9EF971",bold:true},{text:"\n  당신은 스스로의 미래를 선택했습니다.\n",color:"gray"},{text:"\n  여기서 그만두거나, 세계를 더 둘러볼 수 있습니다.\n",color:"dark_gray",italic:true},{text:"\n  모든 발전과제를 달성해 보는 건 어떨까요?\n  일단 연금술 공방에 방문해 봅시다.\n",color:"gray"}]
