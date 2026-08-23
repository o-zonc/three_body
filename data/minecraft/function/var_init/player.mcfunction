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

scoreboard players set @s trigger_init 1
