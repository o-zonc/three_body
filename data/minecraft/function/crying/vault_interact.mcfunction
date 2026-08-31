# 극야 우는 흑요석 금고 상호작용
execute at @s run playsound ui.button.click weather @s ~ ~ ~ 1 2

# 이미 개방한 뒤에는 누락된 비밀 발전과제를 보정하고 상태만 알려줍니다.
execute if score #crying_vault_opened var matches 1 run function crying/advancement_sync
execute if score #crying_vault_opened var matches 1 run title @s actionbar {"text":"이미 개방했습니다.","color":"gold","bold":false,italic:true}
execute if score #crying_vault_opened var matches 1 run return 0

# 네 조각이 모두 모이지 않았다면 현재 진행도만 표시합니다.
function crying/update_count
execute unless score #crying_count var matches 4 run title @s actionbar [{text:"",italic:true},{"score":{"name":"#crying_count","objective":"var"}, color:"dark_gray"},{"text":" / 4", color:"dark_gray"}]
execute unless score #crying_count var matches 4 run return 0

# 네 조각이 모두 모였다면 금고의 의미를 간단히 설명하고 개방 버튼을 표시합니다.
function util/blank
tellraw @s ["",{text:"  [ 봉인된 보관소 ]",color:"gold",bold:true},{text:"\n\n  네 세계에서 모은 우는 흑요석이 보관소의 봉인과 공명합니다.",color:"gray"},{text:"\n  네 조각이 모두 모였습니다. 봉인을 해제할 수 있습니다.",color:"gray"},{text:"\n\n  "},{text:"[ 개방 ]",color:"gold",bold:true,italic:false,hover_event:{action:"show_text",value:{text:"보관소를 개방합니다.",color:"gray"}},click_event:{action:"run_command",command:"/trigger shop_trigger set 2102"}},{text:"\n"}]
