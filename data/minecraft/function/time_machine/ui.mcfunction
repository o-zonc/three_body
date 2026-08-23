execute unless entity @s[advancements={0_overworld/24_time_machine=true}] run title @s actionbar {text:"타임머신을 먼저 건설해야 합니다.",color:"red"}
execute unless entity @s[advancements={0_overworld/24_time_machine=true}] run return 0

function time_machine/prepare_research
scoreboard players enable @s time_machine_trigger
execute at @s run playsound ui.button.click weather @s ~ ~ ~ 1 2
function util/blank

tellraw @s ["",{"text":"  [ 타임머신 ]","color":"light_purple","bold":true},{"text":"\n\n  세대: Lv. ","color":"gray","bold":false},{"score":{"name":"#GLOBAL","objective":"time_machine_level"},"color":"white"},{"text":" / 4","color":"dark_gray"},{"text":"\n  연구 진행: ","color":"gray"},{"score":{"name":"#time_machine_research_total","objective":"tmp"},"color":"white"},{"text":" / 12","color":"dark_gray"},{"text":"\n\n  [ 현재 시간 생산 ]","color":"light_purple","bold":false},{"text":"\n  생산량: ","color":"gray"},{"score":{"name":"#time_machine_amount","objective":"tmp"},"color":"yellow"},{"text":"개","color":"gray"},{"text":"\n  생산 주기: ","color":"gray"},{"score":{"name":"#time_machine_interval","objective":"tmp"},"color":"aqua"},{"text":"틱","color":"gray"},{"text":"\n\n  노랑 연구: ","color":"gray"},{"score":{"name":"#time_machine_yellow","objective":"upgrade"},"color":"yellow"},{"text":"  |  파랑 연구: ","color":"gray"},{"score":{"name":"#time_machine_blue","objective":"upgrade"},"color":"blue"}]

execute if score #time_machine_research_total tmp matches ..11 run tellraw @s ["",{"text":"\n  다음 연구 비용: 색채 자원 ","color":"dark_gray","bold":false},{"score":{"name":"#time_machine_color_cost","objective":"tmp"},"color":"white"},{"text":" + 깨진 양자 얽힘 파편 ","color":"dark_gray"},{"score":{"name":"#time_machine_broken_cost","objective":"tmp"},"color":"gray"}]
execute if score #time_machine_time_cost tmp matches 1.. run tellraw @s ["",{"text":"  마일스톤 추가 비용: 시간 ","color":"dark_gray","italic":true,"bold":false},{"score":{"name":"#time_machine_time_cost","objective":"tmp"},"color":"dark_aqua","italic":true},{"text":"개","color":"dark_gray","italic":true}]

execute if score #time_machine_research_total tmp matches ..11 run tellraw @s ["",{"text":"\n\n  [ 노랑 연구 ]","color":"yellow","bold":true,"hover_event":{"action":"show_text","value":{"text":"시간 1회 생산량을 1개 증가시킵니다.","color":"yellow","bold":false}},"click_event":{"action":"run_command","command":"/trigger time_machine_trigger set 1"}},{"text":"    "},{"text":"[ 파랑 연구 ]","color":"blue","bold":true,"hover_event":{"action":"show_text","value":{"text":"시간 생산 주기를 25틱 단축합니다.","color":"blue","bold":false}},"click_event":{"action":"run_command","command":"/trigger time_machine_trigger set 2"}},{"text":"\n"}]
execute if score #time_machine_research_total tmp matches 12.. run tellraw @s ["",{"text":"\n\n  [ 모든 시간 공학 연구 완료 ]","color":"green","bold":true},{"text":"\n  타임머신의 연구 트리가 완성되었습니다.","color":"gray","bold":false},{"text":"\n"}]
