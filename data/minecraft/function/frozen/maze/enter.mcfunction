# 미로 최초 진입: 해금 상태는 유지하고 입구를 닫은 뒤 일회용 탈출장치를 지급합니다.
function frozen/structure/maze/off
clear @s minecraft:lead[minecraft:custom_data~{three_body:{frozen_maze_escape:1b}}]
give @s minecraft:lead[minecraft:item_model="minecraft:lead",minecraft:custom_data={three_body:{frozen_maze_escape:1b}},minecraft:custom_name={text:"긴급탈출장치",color:"aqua",italic:false},minecraft:lore=[{text:"장치 - 왼손 들기로 사용",color:"blue",italic:false},{text:""},{text:"얼어붙은 세계의 입구로 긴급 탈출합니다.",color:"gray",italic:false}]] 1
title @s actionbar {text:"긴급탈출장치가 지급되었습니다.",color:"aqua",italic:false}

tag @s add maze

scoreboard players set #maze_shake var 0

function frozen/maze/randomize
