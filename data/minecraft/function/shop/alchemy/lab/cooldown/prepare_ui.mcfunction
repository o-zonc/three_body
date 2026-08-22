# 마법 연구소 쿨타임 감소 UI 준비
# Macro args: id, rate
# 입력: #$(id)_cooldown tmp = 최종 쿨타임, #lab_base_cooldown tmp = 연구 적용 전 쿨타임
$scoreboard players operation #$(id)_base_cooldown tmp = #lab_base_cooldown tmp
$data modify storage data tmp.alchemy_lab_cooldown_ui.$(id) set value {text:""}
$execute unless score #$(id)_cooldown tmp = #$(id)_base_cooldown tmp run data modify storage data tmp.alchemy_lab_cooldown_ui.$(id) set value [{text:" → "},{score:{name:"#$(id)_cooldown",objective:"tmp"},color:"light_purple"},{text:"§7틱"},{text:" ★",color:"light_purple",hover_event:{action:"show_text",value:[{text:"§d마법 연구소 연구§r§7로 재생산 대기 시간이 감소합니다.\n\n연구 Lv. "},{score:{name:"#alchemy_lab_level",objective:"upgrade"},color:"light_purple"},{text:"\n§7쿨타임 감소: §d-"},{score:{name:"#alchemy_lab_$(rate)_rate",objective:"tmp"},color:"light_purple"},{text:"%"}]}}]
