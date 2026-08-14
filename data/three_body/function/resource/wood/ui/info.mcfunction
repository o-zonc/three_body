# Wood resource information UI.
data modify storage three_body:resource input set value {type:"wood"}
function three_body:resource/get with storage three_body:resource.input
function three_body:resource/wood/value/now_regen_data

# Current amount.
tellraw @s [{"text":"[ 나무 ] ","color":"green","bold":true},{"text":"보유량: ","color":"gray"},{"nbt":"amount","storage":"three_body:resource.output","color":"white"}]

# Current regeneration level and duration.
tellraw @s [{"text":"재생 레벨: ","color":"gray"},{"score":{"name":"#wood_regen_lvl","objective":"upgrade"}},{"text":"  /  재생 시간: ","color":"gray"},{"nbt":"ticks","storage":"three_body:resource.temp.regen","color":"white"},{"text":" ticks","color":"gray"}]

# Next upgrade cost, when available.
execute if score #wood_regen_lvl upgrade matches 0..3 run function three_body:resource/wood/value/regen_upgrade_cost
execute if score #wood_regen_lvl upgrade matches 0..3 run tellraw @s [{"text":"다음 업그레이드 비용: ","color":"gray"},{"nbt":"amount","storage":"three_body:resource.input","color":"yellow"},{"text":" wood","color":"green"}]
execute if score #wood_regen_lvl upgrade matches 4.. run tellraw @s {"text":"재생 속도: 최대 레벨","color":"gold"}
