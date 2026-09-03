# 여명 차원 자원 증폭 적용
# 매크로 인수: score, dim, final
# meta 상태: 0=잠김, 1=Lv.0(+20%), 2=Lv.1(+50%), 3=Lv.2(최종)

scoreboard players set #dawn_amp_percent tmp 0
$execute if score #dawn_$(dim)_amp meta matches 1 run scoreboard players set #dawn_amp_percent tmp 20
$execute if score #dawn_$(dim)_amp meta matches 2 run scoreboard players set #dawn_amp_percent tmp 50
$execute if score #dawn_$(dim)_amp meta matches 3.. run scoreboard players set #dawn_amp_percent tmp $(final)
execute unless score #dawn_amp_percent tmp matches 1.. run return 0

scoreboard players set #dawn_amp_multiplier tmp 100
scoreboard players operation #dawn_amp_multiplier tmp += #dawn_amp_percent tmp
$scoreboard players operation $(score) tmp *= #dawn_amp_multiplier tmp
scoreboard players set #dawn_amp_divisor tmp 100
$scoreboard players operation $(score) tmp /= #dawn_amp_divisor tmp
