# 1: 업그레이드
# 10: 양자 충돌 실험
# 11: 중입자 충돌 실험 (Lv.2+)
# 12: 시공간 붕괴 실험 (Lv.4+)
execute if score @s accelerator_trigger matches 1 run function accelerator/upgrade
execute if score @s accelerator_trigger matches 10..12 run function accelerator/experiment
scoreboard players set @s accelerator_trigger 0
