# 여명 차원 자원 증폭기 구매
# Macro args: id, name, color, trigger

execute unless score #GLOBAL current_dim matches 4 run return 0
execute if score #GLOBAL dawn_reactor_purchased matches 1.. run title @s actionbar {text:"리액터의 시공간 반응이 시작되어 더 이상 증폭기를 조정할 수 없습니다.",color:"gray",italic:true}
execute if score #GLOBAL dawn_reactor_purchased matches 1.. run return 0
$execute unless score #dawn_$(id)_amp meta matches 0.. run scoreboard players set #dawn_$(id)_amp meta 0
$execute if score #dawn_$(id)_amp meta matches 3.. run title @s actionbar {text:"이미 최대 단계입니다.",color:"gold",italic:true}
$execute if score #dawn_$(id)_amp meta matches 3.. run return 0

$function dawn/amplifier/cost/$(id)
execute store result score #dawn_amp_cost_check tmp run function resource/check_cost
execute unless score #dawn_amp_cost_check tmp matches 1 run title @s actionbar {text:"재료가 부족합니다.",color:"red",italic:true}
execute unless score #dawn_amp_cost_check tmp matches 1 at @s run playsound block.note_block.bass weather @s ~ ~ ~ 0.8 0.5
execute unless score #dawn_amp_cost_check tmp matches 1 run return 0

function resource/cost/take
$scoreboard players add #dawn_$(id)_amp meta 1

# 각 증폭기를 해금하면(내부 meta=1) 해당 장치의 스테인드글라스를 채색합니다.
$execute if score #dawn_$(id)_amp meta matches 1 run function dawn/amplifier/visual/$(id)
# 증폭기 발전과제와 리액터 보상은 기존처럼 Lv.1(내부 meta=2)에서 획득합니다.
$execute if score #dawn_$(id)_amp meta matches 2 run function dawn/amplifier/advancement/$(id)

playsound entity.player.levelup weather @s ~ ~ ~ 0.8 1.2
$function dawn/amplifier/ui {id:"$(id)",name:"$(name)",color:"$(color)",trigger:$(trigger)}
return 1
