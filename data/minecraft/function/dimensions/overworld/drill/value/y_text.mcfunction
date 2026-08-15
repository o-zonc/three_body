# #y(var)를 소수점 세 자리 문자열로 tmp.y_text에 저장

execute unless score #y var = #y var run scoreboard players set #y var 64000
function dimensions/nether/workshop/effect/5_1/effective
execute if score #5_1_effective tmp matches 1 run scoreboard players set #y var -64000

scoreboard players set #y_text_scale tmp 1000
scoreboard players set #y_text_negative tmp -1

# 절댓값 기준으로 정수부와 소수부를 분리
scoreboard players operation #y_text_absolute tmp = #y var
execute if score #y_text_absolute tmp matches ..-1 run scoreboard players operation #y_text_absolute tmp *= #y_text_negative tmp

scoreboard players operation #y_text_whole tmp = #y_text_absolute tmp
scoreboard players operation #y_text_whole tmp /= #y_text_scale tmp

scoreboard players operation #y_text_fraction tmp = #y_text_absolute tmp
scoreboard players operation #y_text_fraction tmp %= #y_text_scale tmp

# 매크로 입력값 구성
data modify storage data tmp.y_text_data set value {sign:"",padding:""}
execute if score #y var matches ..-1 run data modify storage data tmp.y_text_data.sign set value "-"
execute if score #y_text_fraction tmp matches 0..9 run data modify storage data tmp.y_text_data.padding set value "00"
execute if score #y_text_fraction tmp matches 10..99 run data modify storage data tmp.y_text_data.padding set value "0"
execute store result storage data tmp.y_text_data.whole int 1 run scoreboard players get #y_text_whole tmp
execute store result storage data tmp.y_text_data.fraction int 1 run scoreboard players get #y_text_fraction tmp

function dimensions/overworld/drill/value/y_text_apply with storage data tmp.y_text_data
data remove storage data tmp.y_text_data
