# 자원 정보 UI의 ★ hover에 여명 증폭 배율을 표시합니다.
# Macro args: dim, final, final_multiplier

data modify storage data tmp.dawn_amplifier_ui set value {text:""}
$execute if score #dawn_$(dim)_amp meta matches 1 run data modify storage data tmp.dawn_amplifier_ui set value {text:"\n§r§7여명 증폭: §d수급량 ×1.2"}
$execute if score #dawn_$(dim)_amp meta matches 2 run data modify storage data tmp.dawn_amplifier_ui set value {text:"\n§r§7여명 증폭: §d수급량 ×1.5"}
$execute if score #dawn_$(dim)_amp meta matches 3.. run data modify storage data tmp.dawn_amplifier_ui set value {text:"\n§r§7여명 증폭: §d수급량 ×$(final_multiplier)"}
