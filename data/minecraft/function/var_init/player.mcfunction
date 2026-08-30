# 신규 플레이어 또는 전체 restart 후 재초기화된 플레이어에게 한 번만 실행합니다.
# /trigger objective는 사용 후 각 핸들러에서 해당 플레이어만 다시 활성화합니다.
scoreboard players enable @s unlock_trigger
scoreboard players enable @s upgrade_trigger
scoreboard players enable @s shop_trigger
scoreboard players enable @s item_trigger
scoreboard players enable @s entrance_trigger
scoreboard players enable @s compress_trigger
scoreboard players enable @s obsidian_storage_trigger
scoreboard players enable @s scene_trigger
scoreboard players enable @s tool_trigger
scoreboard players enable @s factory_trigger
scoreboard players enable @s accelerator_trigger
scoreboard players enable @s intro_skip
scoreboard players enable @s tutorial

# potion_used 통계는 첫 사용 전에는 score holder가 없을 수 있으므로 명시적으로 0을 만듭니다.
# restart 직후에는 현재 누적 통계를 기준점으로 삼아 이전 사용을 새 소비로 오인하지 않습니다.
execute unless score @s potion_used matches 0.. run scoreboard players set @s potion_used 0
execute unless score @s potion_used_prev matches 0.. run scoreboard players operation @s potion_used_prev = @s potion_used

scoreboard players set @s trigger_init 1
