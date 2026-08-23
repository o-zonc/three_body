# 실패 시 정상 보상 대신 많은 양의 깨진 양자 얽힘 파편을 지급합니다.
# 양자 충돌: 레벨 상승에 따라 실패 부산물도 증가
execute if score @s experiment_type matches 10 if score #GLOBAL accelerator_level matches 1 run function quantum/give_broken {amount:12}
execute if score @s experiment_type matches 10 if score #GLOBAL accelerator_level matches 2 run function quantum/give_broken {amount:18}
execute if score @s experiment_type matches 10 if score #GLOBAL accelerator_level matches 3 run function quantum/give_broken {amount:25}
execute if score @s experiment_type matches 10 if score #GLOBAL accelerator_level matches 4 run function quantum/give_broken {amount:35}

# 중입자 충돌: 다음 업그레이드의 깨진 파편 요구량을 의식한 대량 부산물
execute if score @s experiment_type matches 11 if score #GLOBAL accelerator_level matches 2 run function quantum/give_broken {amount:45}
execute if score @s experiment_type matches 11 if score #GLOBAL accelerator_level matches 3 run function quantum/give_broken {amount:60}
execute if score @s experiment_type matches 11 if score #GLOBAL accelerator_level matches 4 run function quantum/give_broken {amount:80}

# 시공간 붕괴: 최종 단계답게 매우 많은 깨진 파편
execute if score @s experiment_type matches 12 run function quantum/give_broken {amount:160}

# 실패 시 재정비 시간은 정상의 절반만 적용합니다.
execute if score #GLOBAL accelerator_level matches 1 store result score #GLOBAL experiment_cooldown run data get storage data const.accelerator.level."1".failure_cooldown
execute if score #GLOBAL accelerator_level matches 2 store result score #GLOBAL experiment_cooldown run data get storage data const.accelerator.level."2".failure_cooldown
execute if score #GLOBAL accelerator_level matches 3 store result score #GLOBAL experiment_cooldown run data get storage data const.accelerator.level."3".failure_cooldown
execute if score #GLOBAL accelerator_level matches 4 store result score #GLOBAL experiment_cooldown run data get storage data const.accelerator.level."4".failure_cooldown

playsound block.beacon.deactivate master @s ~ ~ ~ 1 0.55
playsound block.respawn_anchor.deplete master @s ~ ~ ~ 0.9 0.65
title @s actionbar {text:"실험 실패 - 불안정한 양자 파편이 대량 발생했습니다.",color:"red",bold:true}
tag @s remove accelerator_experiment_running
scoreboard players set @s experiment_delay 0
scoreboard players set @s experiment_type 0
scoreboard players set #experiment_mode tmp 0
