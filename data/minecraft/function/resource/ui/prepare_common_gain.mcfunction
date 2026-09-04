# 공통 자원 수급량 강화만 적용되는 자원의 UI를 준비한다.
# 매크로 인수: id, color
$scoreboard players operation #common_gain_bonus tmp = #$(id)_gain tmp
$scoreboard players operation #common_gain_bonus tmp -= #$(id)_base_gain tmp
$data modify storage data tmp.common_gain_ui.$(id) set value {text:""}
$execute if score #common_gain_bonus tmp matches 1.. run data modify storage data tmp.common_gain_ui.$(id) set value [{text:" → "},{score:{name:"#$(id)_gain",objective:"tmp"},color:"$(color)"},{text:"§7개"},{text:" ★",color:"$(color)",hover_event:{action:"show_text",value:[{text:"현재 생산량 증가 효과",color:"$(color)"},{text:"\n\n공통 자원 수급량: +",color:"gray"},{score:{name:"#common_gain_bonus",objective:"tmp"},color:"white"}]}}]
