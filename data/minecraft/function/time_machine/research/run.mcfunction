# args: {type:"yellow"|"blue"}
function time_machine/prepare_research
execute if score #time_machine_research_total tmp matches 12.. run title @s actionbar {text:"타임머신 연구가 이미 완료되었습니다.",color:"green"}
execute if score #time_machine_research_total tmp matches 12.. run return 0

# 시간은 마일스톤(4/8/12번째 연구)에서만 요구합니다.
# 타임머신 연구는 일반 업그레이드와 동일하게 흑요석 1개로 전체 비용을 대체할 수 있습니다.
data remove storage data tmp.cost
execute if score #time_machine_time_cost tmp matches 1.. run data modify storage data tmp.cost set value [{type:"time",amount:0}]
execute unless score #time_machine_time_cost tmp matches 1.. run data modify storage data tmp.cost set value []
execute if score #time_machine_time_cost tmp matches 1.. store result storage data tmp.cost[{type:"time"}].amount int 1 run scoreboard players get #time_machine_time_cost tmp

execute store result score #time_machine_cost_ok tmp run function resource/check_cost
# 선택한 색채 자원과 깨진 양자 얽힘 파편은 공용 비용 목록 밖에 있으므로 별도로 검사합니다.
$execute unless score #$(type) material >= #time_machine_color_cost tmp run scoreboard players set #time_machine_cost_ok tmp 0
execute store result score #time_machine_broken_count tmp run clear @s minecraft:gray_dye[minecraft:custom_data~{three_body:{quantum:"broken"}}] 0
execute unless score #time_machine_broken_count tmp >= #time_machine_broken_cost tmp run scoreboard players set #time_machine_cost_ok tmp 0

# 색채 자원/파편 때문에 일반 결제가 실패해도 흑요석을 보유했다면 연구 전체를 흑요석 1개로 대체합니다.
execute unless score #time_machine_cost_ok tmp matches 1 if score #obsidian_wallet tmp matches 1.. run scoreboard players set #obsidian_cost_bypass tmp 1
execute unless score #time_machine_cost_ok tmp matches 1 if score #obsidian_wallet tmp matches 1.. run scoreboard players set #time_machine_cost_ok tmp 1
scoreboard players operation #time_machine_obsidian_bypass tmp = #obsidian_cost_bypass tmp

execute unless score #time_machine_cost_ok tmp matches 1 run title @s actionbar {text:"연구에 필요한 재료가 부족합니다.",color:"red"}
execute unless score #time_machine_cost_ok tmp matches 1 at @s run playsound block.note_block.bass weather @s ~ ~ ~ 0.8 0.5
execute unless score #time_machine_cost_ok tmp matches 1 run return 0

function resource/take_cost
execute unless score #time_machine_obsidian_bypass tmp matches 1 run $scoreboard players operation #$(type) material -= #time_machine_color_cost tmp
execute unless score #time_machine_obsidian_bypass tmp matches 1 run data modify storage data tmp.time_machine.research set value {broken:0}
execute unless score #time_machine_obsidian_bypass tmp matches 1 store result storage data tmp.time_machine.research.broken int 1 run scoreboard players get #time_machine_broken_cost tmp
execute unless score #time_machine_obsidian_bypass tmp matches 1 run function time_machine/research/take_broken with storage data tmp.time_machine.research

$scoreboard players add #time_machine_$(type) upgrade 1
function time_machine/calculate

# 총 연구 4/8/12회에서 다음 세대로 자동 진입합니다.
execute if score #time_machine_research_total tmp matches 4 if score #GLOBAL time_machine_level matches ..1 run scoreboard players set #GLOBAL time_machine_level 2
execute if score #time_machine_research_total tmp matches 8 if score #GLOBAL time_machine_level matches ..2 run scoreboard players set #GLOBAL time_machine_level 3
execute if score #time_machine_research_total tmp matches 12 if score #GLOBAL time_machine_level matches ..3 run scoreboard players set #GLOBAL time_machine_level 4

# 세대 상승 시 현재 누적 연구 비율로 발전 트리 특성을 확정합니다.
execute if score #time_machine_research_total tmp matches 4 run function time_machine/research/apply_milestone
execute if score #time_machine_research_total tmp matches 8 run function time_machine/research/apply_milestone
execute if score #time_machine_research_total tmp matches 12 run function time_machine/research/apply_milestone

# 마일스톤에서 세대 기본 성능과 트리 보너스가 바뀌므로 한 번 더 계산합니다.
function time_machine/calculate
scoreboard players operation #time_machine_timer generate = #time_machine_interval tmp
playsound entity.player.levelup weather @s ~ ~ ~ 0.8 1.3
$title @s actionbar [{text:"$(type) 연구 완료 · 시간 생산 ",color:"light_purple"},{score:{name:"#time_machine_amount",objective:"tmp"},color:"white"},{text:"개 / ",color:"gray"},{score:{name:"#time_machine_interval",objective:"tmp"},color:"aqua"},{text:"틱",color:"gray"}]
function time_machine/ui
