# args: {type:"yellow"|"blue"}
function time_machine/prepare_research
execute if score #time_machine_research_total tmp matches 12.. run title @s actionbar {text:"타임머신 연구가 이미 완료되었습니다.",color:"green"}
execute if score #time_machine_research_total tmp matches 12.. run return 0

data remove storage data tmp.cost
$data modify storage data tmp.cost set value [{type:"$(type)",amount:0},{type:"no_obsidian"}]
execute store result storage data tmp.cost[0].amount int 1 run scoreboard players get #time_machine_color_cost tmp
execute if score #time_machine_time_cost tmp matches 1.. run data modify storage data tmp.cost append value {type:"time",amount:0}
execute if score #time_machine_time_cost tmp matches 1.. store result storage data tmp.cost[{type:"time"}].amount int 1 run scoreboard players get #time_machine_time_cost tmp

execute store result score #time_machine_cost_ok tmp run function resource/check_cost
execute store result score #time_machine_broken_count tmp run clear @s minecraft:gray_dye[minecraft:custom_data~{three_body:{quantum:"broken"}}] 0
execute unless score #time_machine_broken_count tmp >= #time_machine_broken_cost tmp run scoreboard players set #time_machine_cost_ok tmp 0
execute unless score #time_machine_cost_ok tmp matches 1 run title @s actionbar {text:"연구에 필요한 재료가 부족합니다.",color:"red"}
execute unless score #time_machine_cost_ok tmp matches 1 at @s run playsound block.note_block.bass weather @s ~ ~ ~ 0.8 0.5
execute unless score #time_machine_cost_ok tmp matches 1 run return 0

function resource/take_cost
data modify storage data tmp.time_machine.research set value {broken:0}
execute store result storage data tmp.time_machine.research.broken int 1 run scoreboard players get #time_machine_broken_cost tmp
function time_machine/research/take_broken with storage data tmp.time_machine.research

$scoreboard players add #time_machine_$(type) upgrade 1
function time_machine/calculate

# 총 연구 4/8/12회에서 다음 세대로 자동 진입합니다.
execute if score #time_machine_research_total tmp matches 4 if score #GLOBAL time_machine_level matches ..1 run scoreboard players set #GLOBAL time_machine_level 2
execute if score #time_machine_research_total tmp matches 8 if score #GLOBAL time_machine_level matches ..2 run scoreboard players set #GLOBAL time_machine_level 3
execute if score #time_machine_research_total tmp matches 12 if score #GLOBAL time_machine_level matches ..3 run scoreboard players set #GLOBAL time_machine_level 4

# 새 성능을 즉시 반영하도록 다음 생산 주기를 다시 설정합니다.
scoreboard players operation #time_machine_timer generate = #time_machine_interval tmp
playsound entity.player.levelup weather @s ~ ~ ~ 0.8 1.3
$title @s actionbar [{text:"$(type) 연구 완료 · 시간 생산 ",color:"light_purple"},{score:{name:"#time_machine_amount",objective:"tmp"},color:"white"},{text:"개 / ",color:"gray"},{score:{name:"#time_machine_interval",objective:"tmp"},color:"aqua"},{text:"틱",color:"gray"}]
function time_machine/ui
