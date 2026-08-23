# 시공간 붕괴 실험의 후속 손실을 감당하지 못하면 입자가속기가 장기 고장 상태가 됩니다.
scoreboard players set #GLOBAL accelerator_disabled 1
execute store result score #GLOBAL accelerator_repair_timer run data get storage data const.accelerator.repair.automatic_time
scoreboard players set #GLOBAL experiment_cooldown 0
scoreboard players set #GLOBAL accelerator_timer 1
playsound block.respawn_anchor.deplete master @s ~ ~ ~ 1 0.4
title @s actionbar {text:"입자가속기 치명적 손상 - 자동 수리에 오랜 시간이 필요합니다.",color:"dark_red",bold:true}
tellraw @s [{text:"\n  시공간 붕괴로 입자가속기가 크게 손상되었습니다.",color:"red"},{text:"\n  자동 복구를 기다리거나 입자가속기에서 철 100,000과 소지한 시간 2를 사용해 수동 재가동할 수 있습니다.\n",color:"gray"}]
