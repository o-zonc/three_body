# 기존 월드에서도 입자가속기·외계 간섭·보호막 상태가 안전한 기본값을 갖도록 초기화합니다.
# 이미 값이 존재하면 보존하므로 /reload 시 진행도가 초기화되지 않습니다.
execute unless score #GLOBAL accelerator_level = #GLOBAL accelerator_level run scoreboard players set #GLOBAL accelerator_level 0
execute unless score #GLOBAL accelerator_timer = #GLOBAL accelerator_timer run scoreboard players set #GLOBAL accelerator_timer 1200
execute unless score #GLOBAL accelerator_disabled = #GLOBAL accelerator_disabled run scoreboard players set #GLOBAL accelerator_disabled 0
execute unless score #GLOBAL accelerator_repair_timer = #GLOBAL accelerator_repair_timer run scoreboard players set #GLOBAL accelerator_repair_timer 0
execute unless score #GLOBAL experiment_cooldown = #GLOBAL experiment_cooldown run scoreboard players set #GLOBAL experiment_cooldown 0
execute unless score #GLOBAL alien_interference = #GLOBAL alien_interference run scoreboard players set #GLOBAL alien_interference 0
execute unless score #GLOBAL alien_timer = #GLOBAL alien_timer run scoreboard players set #GLOBAL alien_timer 1200
execute unless score #GLOBAL shield_charge = #GLOBAL shield_charge run scoreboard players set #GLOBAL shield_charge 0
execute unless score #GLOBAL shield_maintenance = #GLOBAL shield_maintenance run scoreboard players set #GLOBAL shield_maintenance 6000

# 보스바는 현재 보호막 상태와 즉시 동기화합니다.
execute store result bossbar shield_charge value run scoreboard players get #GLOBAL shield_charge
bossbar set shield_charge players @a
execute if score #GLOBAL shield_charge matches 1.. run bossbar set shield_charge visible true
execute unless score #GLOBAL shield_charge matches 1.. run bossbar set shield_charge visible false
