# 자원 정보 UI의 ★ hover에 여명 증폭 배율을 표시한다.
# 매크로 인수: dim, final, final_multiplier

data modify storage data tmp.dawn_amplifier_ui set value {text:""}
scoreboard players set #dawn_amplifier_ui_active tmp 0
$execute if score #dawn_$(dim)_amp meta matches 1 run data modify storage data tmp.dawn_amplifier_ui set value {text:"\n여명 증폭 수급량: ×",color:"gray",extra:[{text:"1.2",color:"#9EF971"}]}
$execute if score #dawn_$(dim)_amp meta matches 2 run data modify storage data tmp.dawn_amplifier_ui set value {text:"\n여명 증폭 수급량: ×",color:"gray",extra:[{text:"1.5",color:"#9EF971"}]}
$execute if score #dawn_$(dim)_amp meta matches 3.. run data modify storage data tmp.dawn_amplifier_ui set value {text:"\n여명 증폭 수급량: ×",color:"gray",extra:[{text:"$(final_multiplier)",color:"#9EF971"}]}
$execute if score #dawn_$(dim)_amp meta matches 1.. run scoreboard players set #dawn_amplifier_ui_active tmp 1
