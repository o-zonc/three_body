# ==========================================
# RESOURCE API TEST
# ==========================================
# Run with: /function three_body:test/resource
#
# IMPORTANT:
# This test does not create, initialize, reset, or modify the material
# scoreboard/objective outside of the API calls being tested.
# The game must already have completed three_body:init.
#
# The test starts from the current #iron value and restores that value
# after the test so running the test does not alter game state.

# Test-only objective.
scoreboard objectives add resource_test dummy
scoreboard players set #resource_test_total resource_test 0
scoreboard players set #resource_test_pass resource_test 0
scoreboard players set #resource_test_fail resource_test 0
scoreboard players set #resource_test_value resource_test 0
scoreboard players set #resource_test_result resource_test 0
scoreboard players set #resource_test_initial resource_test 0

# Store the current iron amount. No resource initialization is performed here.
execute store result score #resource_test_initial resource_test run scoreboard players get #iron material

# Header.
tellraw @a {"text":"========================================","color":"dark_gray"}
tellraw @a {"text":"        RESOURCE API TEST","color":"gold","bold":true}
tellraw @a {"text":"========================================","color":"dark_gray"}
tellraw @a {"text":"Requires: three_body:init already executed","color":"gray"}

# --------------------------------------------------
# SET: iron = 100
# --------------------------------------------------
data modify storage three_body:resource input set value {type:"iron",amount:100}
function three_body:resource/set with storage three_body:resource input
execute store result score #resource_test_value resource_test run scoreboard players get #iron material

scoreboard players add #resource_test_total resource_test 1
execute if score #resource_test_value resource_test matches 100 run scoreboard players add #resource_test_pass resource_test 1
execute unless score #resource_test_value resource_test matches 100 run scoreboard players add #resource_test_fail resource_test 1
execute if score #resource_test_value resource_test matches 100 run tellraw @a [{"text":"[SET]        expected=100 actual=","color":"yellow"},{"score":{"name":"#resource_test_value","objective":"resource_test"}},{"text":" PASS","color":"green"}]
execute unless score #resource_test_value resource_test matches 100 run tellraw @a [{"text":"[SET]        expected=100 actual=","color":"yellow"},{"score":{"name":"#resource_test_value","objective":"resource_test"}},{"text":" FAIL","color":"red"}]

# --------------------------------------------------
# ADD: iron + 10 = 110
# --------------------------------------------------
data modify storage three_body:resource input set value {type:"iron",amount:10}
function three_body:resource/add with storage three_body:resource input
execute store result score #resource_test_value resource_test run scoreboard players get #iron material

scoreboard players add #resource_test_total resource_test 1
execute if score #resource_test_value resource_test matches 110 run scoreboard players add #resource_test_pass resource_test 1
execute unless score #resource_test_value resource_test matches 110 run scoreboard players add #resource_test_fail resource_test 1
execute if score #resource_test_value resource_test matches 110 run tellraw @a [{"text":"[ADD]        expected=110 actual=","color":"yellow"},{"score":{"name":"#resource_test_value","objective":"resource_test"}},{"text":" PASS","color":"green"}]
execute unless score #resource_test_value resource_test matches 110 run tellraw @a [{"text":"[ADD]        expected=110 actual=","color":"yellow"},{"score":{"name":"#resource_test_value","objective":"resource_test"}},{"text":" FAIL","color":"red"}]

# --------------------------------------------------
# HAS: iron >= 100 = true
# --------------------------------------------------
data modify storage three_body:resource input set value {type:"iron",amount:100}
execute store result score #resource_test_result resource_test run function three_body:resource/has with storage three_body:resource input

scoreboard players add #resource_test_total resource_test 1
execute if score #resource_test_result resource_test matches 1 run scoreboard players add #resource_test_pass resource_test 1
execute unless score #resource_test_result resource_test matches 1 run scoreboard players add #resource_test_fail resource_test 1
execute if score #resource_test_result resource_test matches 1 run tellraw @a [{"text":"[HAS]        expected=1 actual=","color":"yellow"},{"score":{"name":"#resource_test_result","objective":"resource_test"}},{"text":" PASS","color":"green"}]
execute unless score #resource_test_result resource_test matches 1 run tellraw @a [{"text":"[HAS]        expected=1 actual=","color":"yellow"},{"score":{"name":"#resource_test_result","objective":"resource_test"}},{"text":" FAIL","color":"red"}]

# --------------------------------------------------
# REMOVE: iron - 30 = 80
# --------------------------------------------------
data modify storage three_body:resource input set value {type:"iron",amount:30}
function three_body:resource/remove with storage three_body:resource input
execute store result score #resource_test_value resource_test run scoreboard players get #iron material

scoreboard players add #resource_test_total resource_test 1
execute if score #resource_test_value resource_test matches 80 run scoreboard players add #resource_test_pass resource_test 1
execute unless score #resource_test_value resource_test matches 80 run scoreboard players add #resource_test_fail resource_test 1
execute if score #resource_test_value resource_test matches 80 run tellraw @a [{"text":"[REMOVE 30]  expected=80 actual=","color":"yellow"},{"score":{"name":"#resource_test_value","objective":"resource_test"}},{"text":" PASS","color":"green"}]
execute unless score #resource_test_value resource_test matches 80 run tellraw @a [{"text":"[REMOVE 30]  expected=80 actual=","color":"yellow"},{"score":{"name":"#resource_test_value","objective":"resource_test"}},{"text":" FAIL","color":"red"}]

# --------------------------------------------------
# REMOVE: iron - 100 must fail and remain 80
# --------------------------------------------------
data modify storage three_body:resource input set value {type:"iron",amount:100}
function three_body:resource/remove with storage three_body:resource input
execute store result score #resource_test_value resource_test run scoreboard players get #iron material

scoreboard players add #resource_test_total resource_test 1
execute if score #resource_test_value resource_test matches 80 run scoreboard players add #resource_test_pass resource_test 1
execute unless score #resource_test_value resource_test matches 80 run scoreboard players add #resource_test_fail resource_test 1
execute if score #resource_test_value resource_test matches 80 run tellraw @a [{"text":"[REMOVE 100] expected=80 actual=","color":"yellow"},{"score":{"name":"#resource_test_value","objective":"resource_test"}},{"text":" PASS","color":"green"}]
execute unless score #resource_test_value resource_test matches 80 run tellraw @a [{"text":"[REMOVE 100] expected=80 actual=","color":"yellow"},{"score":{"name":"#resource_test_value","objective":"resource_test"}},{"text":" FAIL","color":"red"}]

# --------------------------------------------------
# GET: output.amount must be 80
# --------------------------------------------------
data modify storage three_body:resource input set value {type:"iron"}
function three_body:resource/get with storage three_body:resource input
execute store result score #resource_test_value resource_test run data get storage three_body:resource output.amount 1

scoreboard players add #resource_test_total resource_test 1
execute if score #resource_test_value resource_test matches 80 run scoreboard players add #resource_test_pass resource_test 1
execute unless score #resource_test_value resource_test matches 80 run scoreboard players add #resource_test_fail resource_test 1
execute if score #resource_test_value resource_test matches 80 run tellraw @a [{"text":"[GET]         expected=80 actual=","color":"yellow"},{"score":{"name":"#resource_test_value","objective":"resource_test"}},{"text":" PASS","color":"green"}]
execute unless score #resource_test_value resource_test matches 80 run tellraw @a [{"text":"[GET]         expected=80 actual=","color":"yellow"},{"score":{"name":"#resource_test_value","objective":"resource_test"}},{"text":" FAIL","color":"red"}]

# --------------------------------------------------
# Restore the resource value that existed before the test.
# This is test cleanup, not resource initialization.
# --------------------------------------------------
scoreboard players operation #iron material = #resource_test_initial resource_test

# Summary.
tellraw @a {"text":"----------------------------------------","color":"dark_gray"}
tellraw @a [{"text":"TOTAL:  ","color":"gray"},{"score":{"name":"#resource_test_total","objective":"resource_test"}}]
tellraw @a [{"text":"PASSED: ","color":"green"},{"score":{"name":"#resource_test_pass","objective":"resource_test"}}]
tellraw @a [{"text":"FAILED: ","color":"red"},{"score":{"name":"#resource_test_fail","objective":"resource_test"}}]
execute if score #resource_test_fail resource_test matches 0 run tellraw @a {"text":"RESULT: ALL TESTS PASSED","color":"green","bold":true}
execute unless score #resource_test_fail resource_test matches 0 run tellraw @a {"text":"RESULT: TEST FAILED","color":"red","bold":true}
tellraw @a [{"text":"RESTORED: #iron material = ","color":"gold"},{"score":{"name":"#iron","objective":"material"}}]
tellraw @a {"text":"========================================","color":"dark_gray"}
