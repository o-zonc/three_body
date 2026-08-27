# Macro args: id, score, unit
# 오버월드 유적지만 적용되는 자원의 재생산 대기 시간 UI를 준비합니다.
$scoreboard players operation #$(score)_base tmp = #regen_base_cooldown tmp
$scoreboard players operation #$(score)_final tmp = #$(score) tmp
$data modify storage data tmp.alchemy_lab_cooldown_ui.$(id) set value {text:""}
$execute unless score #$(score)_final tmp = #$(score)_base tmp if score #stronghold_overworld upgrade matches 1.. run data modify storage data tmp.alchemy_lab_cooldown_ui.$(id) set value [{text:" → "},{score:{name:"#$(score)_final",objective:"tmp"},color:"green"},{text:"§7$(unit)"},{text:" ★",color:"green",hover_event:{action:"show_text",value:{text:"§a오버월드 유적지§r§7의 복구 효과로 재생산 대기 시간이 감소합니다.\n\n유적지 효과: §a-20%"}}}]
$execute unless score #$(score)_final tmp = #$(score)_base tmp run scoreboard players operation #$(score) tmp = #$(score)_base tmp
