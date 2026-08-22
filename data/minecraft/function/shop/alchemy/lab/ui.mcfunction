# 마법 연구소 UI
execute unless score #alchemy_workshop unlock matches 1 run title @s actionbar {"text":"연금술 공방을 먼저 해금해야 합니다.","color":"red"}
execute unless score #alchemy_workshop unlock matches 1 run return 0
execute unless score #level alchemy_workshop matches 1.. run title @s actionbar {"text":"연금술 공방 Lv. 1이 필요합니다.","color":"red"}
execute unless score #level alchemy_workshop matches 1.. run return 0

function shop/alchemy/lab/rates
function shop/alchemy/lab/prepare
execute at @s run playsound ui.button.click weather @s ~ ~ ~ 1 2
function util/blank

tellraw @s ["",{"text":"  [ 마법 연구소 ]","color":"dark_purple","bold":true,"shadow_color":-16777216},{"text":"\n\n  연구 레벨: ","color":"gray","bold":false},{"score":{"name":"#alchemy_lab_level","objective":"upgrade"},"color":"white"},{"text":" / 15","color":"dark_gray"},{"text":"\n\n  [ 현재 연구 효과 ]","color":"light_purple"},{"text":"\n  에메랄드·청금석 쿨타임 -","color":"gray"},{"score":{"name":"#alchemy_lab_early_rate","objective":"tmp"},"color":"green"},{"text":"%","color":"green"},{"text":"\n  금·다이아몬드 쿨타임 -","color":"gray"},{"score":{"name":"#alchemy_lab_precious_rate","objective":"tmp"},"color":"gold"},{"text":"%","color":"gold"},{"text":"\n  열기·냉기 쿨타임 -","color":"gray"},{"score":{"name":"#alchemy_lab_elemental_rate","objective":"tmp"},"color":"aqua"},{"text":"%","color":"aqua"}]

# 연구 가능
execute if score #alchemy_lab_level upgrade matches ..14 if score #alchemy_lab_available tmp matches 1 run tellraw @s ["",{"text":"\n  다음 연구: Lv. ","color":"gray"},{"score":{"name":"#alchemy_lab_next","objective":"tmp"},"color":"white"},{"text":"\n  효과 증가: ","color":"gray"},{"storage":"data","nbt":"tmp.alchemy_lab.next_effect","interpret":true},{"text":"\n\n  "},{"text":"[ 연구 진행 ]","color":"aqua","bold":true,"hover_event":{"action":"show_text","value":["",{"text":"§6[§7 필요한 재료 §6]\n"},{"storage":"data","nbt":"tmp.cost_text.alchemy_lab.text","interpret":true}]},"click_event":{"action":"run_command","command":"/trigger shop_trigger set 1521"}},{"text":"\n"}]

# 연구 잠김
execute if score #alchemy_lab_level upgrade matches ..14 unless score #alchemy_lab_available tmp matches 1 run tellraw @s ["",{"text":"\n  다음 연구: Lv. ","color":"gray"},{"score":{"name":"#alchemy_lab_next","objective":"tmp"},"color":"white"},{"text":"\n  효과 증가: ","color":"gray"},{"storage":"data","nbt":"tmp.alchemy_lab.next_effect","interpret":true},{"text":"\n\n  [ 연구 잠김 ] ","color":"dark_red","bold":true},{"storage":"data","nbt":"tmp.alchemy_lab.lock","interpret":true},{"text":"\n  필요한 재료: ","color":"dark_gray","bold":false},{"storage":"data","nbt":"tmp.cost_text.alchemy_lab.text","interpret":true},{"text":"\n"}]

# 최대 레벨
execute if score #alchemy_lab_level upgrade matches 15.. run tellraw @s ["",{"text":"\n  [ 모든 연구 완료 ]","color":"green","bold":true},{"text":"\n  마법 연구소의 모든 쿨타임 연구가 완료되었습니다.","color":"gray"},{"text":"\n"}]
