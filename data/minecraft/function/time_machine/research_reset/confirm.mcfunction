execute unless score #GLOBAL time_machine_level matches 4 run return 0
execute if entity @s[advancements={0_overworld/26_all_general=true}] run return 0

tag @s add time_machine_reset_confirm
scoreboard players enable @s time_machine_trigger
execute at @s run playsound ui.button.click weather @s ~ ~ ~ 1 1
function util/blank
tellraw @s ["",{"text":"  [ 타임머신 발전 초기화 확인 ]","color":"red","bold":true},{"text":"\n\n  타임머신을 Lv.1로 되돌리고 모든 연구량, 경로 기록을 초기화합니다.","color":"gray","bold":false},{"text":"\n  건설 상태, 시설, 일반 자원과 다른 진행도는 유지됩니다.","color":"green"},{"text":"\n\n  "},{"text":"[ 초기화 실행 ]","color":"dark_red","bold":true,"hover_event":{"action":"show_text","value":{"text":"이 작업은 되돌릴 수 없습니다.","color":"red"}},"click_event":{"action":"run_command","command":"/trigger time_machine_trigger set 4"}},{"text":"\n"}]
