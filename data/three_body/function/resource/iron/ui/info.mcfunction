# 철(iron) resource information UI.
data modify storage three_body:resource input set value {type:"iron"}
function three_body:resource/get with storage three_body:resource.input
function three_body:resource/iron/value/now_regen_data

# Current amount.
tellraw @s [{"text":"[ 철 ] ","color":"white","bold":true},{"text":"보유량: ","color":"gray"},{"nbt":"amount","storage":"three_body:resource.output","color":"white"}]

# Current regeneration level and duration.
tellraw @s [{"text":"재생 레벨: ","color":"gray"},{"score":{"name":"#iron_regen_lvl","objective":"upgrade"}},{"text":"  /  재생 시간: ","color":"gray"},{"nbt":"ticks","storage":"three_body:resource.temp.regen","color":"white"},{"text":" ticks","color":"gray"}]

# The upgrade-cost API determines whether a next level exists.
function three_body:resource/iron/value/regen_upgrade_cost
execute if data storage three_body:resource.input amount run tellraw @s [{"text":"다음 업그레이드 비용: ","color":"gray"},{"nbt":"amount","storage":"three_body:resource.input","color":"yellow"},{"text":" 철","color":"white"}]
execute unless data storage three_body:resource.input amount run tellraw @s {"text":"재생 속도: 최대 레벨","color":"gold"}
