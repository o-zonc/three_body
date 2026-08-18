execute at @s run playsound ui.button.click weather @s ~ ~ ~ 1 2
function util/blank

execute if entity @s[advancements={0_overworld/20_observatory=true}] run tellraw @s ["",{"text":"  [ 관측소 ]","color":"aqua","bold":true},{"text":"\n\n  현재 상태: ","color":"gray","bold":false},{"text":"구매 완료","color":"green"},{"text":"\n  별의 움직임과 난세기의 주기를 관측할 수 있습니다.","color":"gray"},{"text":"\n"}]
execute if entity @s[advancements={0_overworld/20_observatory=true}] run return 0

execute unless score #overworld civilization_age matches 3.. run tellraw @s ["",{"text":"  [ 관측소 ]","color":"aqua","bold":true},{"text":"\n\n  현재 상태: ","color":"gray","bold":false},{"text":"잠김","color":"red"},{"text":"\n\n  청동기 시대에 도달하면 관측소를 구매할 수 있습니다.","color":"yellow"},{"text":"\n"}]
execute unless score #overworld civilization_age matches 3.. run return 0

tellraw @s ["",{"text":"  [ 관측소 ]","color":"aqua","bold":true},{"text":"\n\n  현재 상태: ","color":"gray","bold":false},{"text":"구매 가능","color":"yellow"},{"text":"\n  별의 움직임을 관측해 난세기의 주기를 예측합니다.","color":"gray"},{"text":"\n\n  "},{"text":"[ 구매 ]","color":"aqua","bold":true,"hover_event":{"action":"show_text","value":{"text":"관측소를 구매합니다."}},"click_event":{"action":"run_command","command":"/trigger shop_trigger set 1601"}},{"text":"\n"}]
