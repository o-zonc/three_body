# 자원 정보 UI에 여명 증폭 수치를 표시합니다.
# Macro args: dim, final

data modify storage data tmp.dawn_amplifier_ui set value {text:""}
scoreboard players set #dawn_amp_ui_percent tmp 0
$execute if score #dawn_$(dim)_amp meta matches 1 run scoreboard players set #dawn_amp_ui_percent tmp 20
$execute if score #dawn_$(dim)_amp meta matches 2 run scoreboard players set #dawn_amp_ui_percent tmp 50
$execute if score #dawn_$(dim)_amp meta matches 3.. run scoreboard players set #dawn_amp_ui_percent tmp $(final)
execute if score #dawn_amp_ui_percent tmp matches 1.. run data modify storage data tmp.dawn_amplifier_ui set value [{text:"\n  §8•§7 수급량 증가: "},{text:"+",color:"green"},{score:{name:"#dawn_amp_ui_percent",objective:"tmp"},color:"green"},{text:"%",color:"green"},{text:" §d(여명 증폭)"}]
