# 실제 회차 타이머를 건드리지 않고 20개 표본의 범위와 값 변화를 검사합니다.
scoreboard players set #color_sample_count tmp 0
scoreboard players set #color_sample_min tmp 72001
scoreboard players set #color_sample_max tmp 35999
scoreboard players set #color_sample_varies tmp 0
function test/color_event_sample_once
scoreboard players operation #color_sample_first tmp = #color_event_sample tmp
function test/color_event_sample_once
function test/color_event_sample_once
function test/color_event_sample_once
function test/color_event_sample_once
function test/color_event_sample_once
function test/color_event_sample_once
function test/color_event_sample_once
function test/color_event_sample_once
function test/color_event_sample_once
function test/color_event_sample_once
function test/color_event_sample_once
function test/color_event_sample_once
function test/color_event_sample_once
function test/color_event_sample_once
function test/color_event_sample_once
function test/color_event_sample_once
function test/color_event_sample_once
function test/color_event_sample_once
function test/color_event_sample_once
tellraw @s [{text:"[TEST] samples=",color:"gold"},{score:{name:"#color_sample_count",objective:"tmp"}},{text:", min="},{score:{name:"#color_sample_min",objective:"tmp"}},{text:", max="},{score:{name:"#color_sample_max",objective:"tmp"}},{text:", varies="},{score:{name:"#color_sample_varies",objective:"tmp"}}]
execute unless score #color_sample_min tmp matches 36000..72000 run tellraw @s {text:"[FAIL] 표본 최솟값이 허용 범위를 벗어났습니다.",color:"red"}
execute unless score #color_sample_max tmp matches 36000..72000 run tellraw @s {text:"[FAIL] 표본 최댓값이 허용 범위를 벗어났습니다.",color:"red"}
execute unless score #color_sample_varies tmp matches 1 run tellraw @s {text:"[WARN] 이번 20개 표본이 모두 같았습니다. 다시 실행해 확인하세요.",color:"yellow"}
