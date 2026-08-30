# 1: 업그레이드
# 2: 수동 재가동
# 10: 양자 충돌 실험
# 11: 중입자 충돌 실험 (Lv.2+)
# 12: 시공간 붕괴 실험 (Lv.4+)
# 20: 일반 양자 얽힘 파편 보호막 투입
# 21: 굉장한 양자 얽힘 파편 보호막 투입
# 22: 특별한 양자 얽힘 파편 보호막 투입
execute if score #GLOBAL accelerator_disabled matches 1 if score @s accelerator_trigger matches 1 run title @s actionbar {text:"입자가속기가 손상되어 업그레이드할 수 없습니다.",color:"red",italic:true}
execute if score #GLOBAL accelerator_disabled matches 1 if score @s accelerator_trigger matches 10..12 run title @s actionbar {text:"입자가속기가 수리 중이라 실험할 수 없습니다.",color:"red",italic:true}
execute unless score #GLOBAL accelerator_disabled matches 1 if score @s accelerator_trigger matches 1 run function accelerator/upgrade
execute if score @s accelerator_trigger matches 2 run function accelerator/repair
execute unless score #GLOBAL accelerator_disabled matches 1 if score @s accelerator_trigger matches 10..12 run function accelerator/experiment
execute if score @s accelerator_trigger matches 20 run function shield/charge_common
execute if score @s accelerator_trigger matches 21 run function shield/charge_great
execute if score @s accelerator_trigger matches 22 run function shield/charge_special
scoreboard players set @s accelerator_trigger 0
scoreboard players enable @s accelerator_trigger
