# ==========================================
# WOOD REGEN / SCOREBOARD DISPLAY TEST
# ==========================================
# Run with: /function test/resource_wood_regen
#
# Tests the wood regeneration API and prepares the existing resource
# scoreboard display to show the result.
#
# The test prepares a deterministic environment first, then restores the
# original wood amount and regeneration level at the end.

scoreboard objectives add resource_test dummy
scoreboard players set #wood_test_pass resource_test 0
scoreboard players set #wood_test_fail resource_test 0
scoreboard players set #wood_test_value resource_test 0
scoreboard players set #wood_test_initial upgrade 0
scoreboard players set #wood_test_initial_value resource_test 0
scoreboard players operation #wood_test_initial upgrade = #wood_regen_lvl upgrade
execute store result score #wood_test_initial_value resource_test run scoreboard players get #wood material

# Prepare a deterministic test environment.
scoreboard players set #wood unlock 1
scoreboard players set #wood_regen_lvl upgrade 0
scoreboard players set #wood material 0

# Header.
tellraw @a {"text":"========================================","color":"dark_gray"}
tellraw @a {"text":"       WOOD REGEN API TEST","color":"gold","bold":true}
tellraw @a {"text":"========================================","color":"dark_gray"}

# --------------------------------------------------
# TEST 1: current regen value
# --------------------------------------------------
# Populate temp.regen before asking regen_value for the current ticks.
function resource/wood/value/now_regen_data
execute store result score #wood_test_value resource_test run function resource/wood/value/regen_value
execute if score #wood_test_value resource_test matches 1.. run scoreboard players add #wood_test_pass resource_test 1
execute unless score #wood_test_value resource_test matches 1.. run scoreboard players add #wood_test_fail resource_test 1
execute if score #wood_test_value resource_test matches 1.. run tellraw @a [{"text":"[REGEN VALUE]  ticks=","color":"yellow"},{"score":{"name":"#wood_test_value","objective":"resource_test"}},{"text":" PASS","color":"green"}]
execute unless score #wood_test_value resource_test matches 1.. run tellraw @a {"text":"[REGEN VALUE]  invalid/zero value FAIL","color":"red"}

# --------------------------------------------------
# TEST 2: next-level upgrade cost
# --------------------------------------------------
function resource/wood/value/regen_upgrade_cost
execute store result score #wood_test_value resource_test run data get storage resource input.amount 1
execute if data storage resource input.amount run scoreboard players add #wood_test_pass resource_test 1
execute unless data storage resource input.amount run scoreboard players add #wood_test_fail resource_test 1
execute if data storage resource input.amount run tellraw @a [{"text":"[UPGRADE COST] expected=config actual=","color":"yellow"},{"score":{"name":"#wood_test_value","objective":"resource_test"}},{"text":" PASS","color":"green"}]
execute unless data storage resource input.amount run tellraw @a {"text":"[UPGRADE COST] missing cost FAIL","color":"red"}

# --------------------------------------------------
# TEST 3: scoreboard display data
# --------------------------------------------------
function resource/wood/ui/info

tellraw @a [{"text":"[DISPLAY] wood regen level = ","color":"aqua"},{"score":{"name":"#wood_regen_lvl","objective":"upgrade"}}]

# --------------------------------------------------
# TEST 4: upgrade transaction
# --------------------------------------------------
# Give the test account exactly the configured next-level cost.
scoreboard players set #wood material 0
execute store result score #wood_test_value resource_test run data get storage resource input.amount 1
scoreboard players operation #wood material = #wood_test_value resource_test
function resource/wood/trigger/upgrade

execute if score #wood_regen_lvl upgrade > #wood_test_initial upgrade run scoreboard players add #wood_test_pass resource_test 1
execute unless score #wood_regen_lvl upgrade > #wood_test_initial upgrade run scoreboard players add #wood_test_fail resource_test 1
execute if score #wood_regen_lvl upgrade > #wood_test_initial upgrade run tellraw @a {"text":"[UPGRADE]      level increased PASS","color":"green"}
execute unless score #wood_regen_lvl upgrade > #wood_test_initial upgrade run tellraw @a {"text":"[UPGRADE]      level did not increase FAIL","color":"red"}

# Restore original test state.
scoreboard players operation #wood_regen_lvl upgrade = #wood_test_initial upgrade
scoreboard players operation #wood material = #wood_test_initial_value resource_test

# Refresh the existing scoreboard display.
function resource/wood/ui/info

# Summary.
tellraw @a {"text":"----------------------------------------","color":"dark_gray"}
tellraw @a [{"text":"PASSED: ","color":"green"},{"score":{"name":"#wood_test_pass","objective":"resource_test"}}]
tellraw @a [{"text":"FAILED: ","color":"red"},{"score":{"name":"#wood_test_fail","objective":"resource_test"}}]
execute if score #wood_test_fail resource_test matches 0 run tellraw @a {"text":"RESULT: ALL WOOD REGEN TESTS PASSED","color":"green","bold":true}
execute unless score #wood_test_fail resource_test matches 0 run tellraw @a {"text":"RESULT: WOOD REGEN TEST FAILED","color":"red","bold":true}
tellraw @a {"text":"========================================","color":"dark_gray"}
