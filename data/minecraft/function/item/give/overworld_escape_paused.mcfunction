# 시간이 정지된 다른 세계에 차원 이동기 없이 진입한 경우 긴급 귀환 수단을 지급합니다.
# 기존 탈출기 지급 루틴을 재사용하고, 안내 문구만 이 상황에 맞게 덮어씁니다.
execute unless score #GLOBAL era_paused matches 1 run return 0
execute if entity @s[tag=overworld_escape_given] run return 0
execute store result score #dimension_mover_count tmp run clear @s minecraft:brick[minecraft:custom_data~{disaster:1b}] 0
execute if score #dimension_mover_count tmp matches 1.. run return 0

function item/give/overworld_escape
title @s actionbar {text:"시간 흐름이 멈춘 다른 세계를 차원 이동기 없이 가는 행위는 스스로 감옥에 찾아가는 것과 같습니다.",color:"green",italic:false}
