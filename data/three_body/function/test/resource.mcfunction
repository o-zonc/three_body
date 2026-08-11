# ==========================================
# RESOURCE API TEST
# ==========================================
# Run with: /function three_body:test/resource
#
# The test deliberately prints the actual material value after every
# mutating API call. This makes macro/API failures visible instead of
# hiding them behind conditional PASS/FAIL messages.

scoreboard objectives add resource_test dummy
scoreboard players set #resource_test_total resource_test 0
scoreboard players set #resource_test_pass resource_test 0
scoreboard players set #resource_test_fail resource_test 0
scoreboard players set #resource_test_value resource_test 0
scoreboard players set #resource_test_result resource_test 0

# Deterministic starting state.
scoreboard players set #iron material 0
function three_body:resource/init

# Header.
tellraw @a {"text":"========================================","color":"dark_gray"}
tellraw @a {"text":"        RESOURCE API TEST","color":"gold","bold":true}
tellraw @a {"text":"========================================","color":"dark_gray"}

# --------------------------------------------------
# SET
# --------------------------------------------------
data modify storage three_body:resource input set value {type:"iron",amount:100}
function three_body:resource/set with storage three_body:resource input
execute store result score #resource_test_value resource_test run scoreboard players get #iron material

scoreboard players add #resource_test_total resource_test 1
execute if score #resource_test_value resource_test matches 100 run scoreboard players add #resource_test_pass resource_test 1
execute unless score #resource_test_value resource_test matches 100 run scoreboard players add #resource_test_fail resource_test 1

tellraw @a [{"text":"[SET]    expected=100 actual=","color":"yellow"},{"score":{"name":"#resource_test_value","objective":"resource_test"}}]

# --------------------------------------------------
# ADD
# --------------------------------------------------
data modify storage three_body:resource input set value {type:"iron",amount:10}
function three_body:resource/add with storage three_body:resource input
execute store result score #resource_test_value resource_test run scoreboard players get #iron material

scoreboard players add #resource_test_total resource_test 1
execute if score #resource_test_value resource_test matches 110 run scoreboard players add #resource_test_pass resource_test 1
execute unless score #resource_test_value resource_test matches 110 run scoreboard players add #resource_test_fail resource_test 1

tellraw @a [{"text":"[ADD]    expected=110 actual=","color":"yellow"},{"score":{"name":"#resource_test_value","objective":"resource_test"}}]

# --------------------------------------------------
# HAS
# --------------------------------------------------
data modify storage three_body:resource input set value {type:"iron",amount:100}
execute store result score #resource_test_result resource_test run function three_body:resource/has with storage three_body:resource input

scoreboard players add #resource_test_total resource_test 1
execute if score #resource_test_result resource_test matches 1 run scoreboard players add #resource_test_pass resource_test 1
execute unless score #resource_test_result resource_test matches 1 run scoreboard players add #resource_test_fail resource_test 1

tellraw @a [{"text":"[HAS]    expected=1 actual=","color":"yellow"},{"score":{"name":"#resource_test_result","objective":"resource_test"}}]

# --------------------------------------------------
# REMOVE 30
# --------------------------------------------------
data modify storage three_body:resource input set value {type:"iron",amount:30}
function three_body:resource/remove with storage three_body:resource input
execute store result score #resource_test_value resource_test run scoreboard players get #iron material

scoreboard players add #resource_test_total resource_test 1
execute if score #resource_test_value resource_test matches 80 run scoreboard players add #resource_test_pass resource_test 1
execute unless score #resource_test_value resource_test matches 80 run scoreboard players add #resource_test_fail resource_test 1

tellraw @a [{"text":"[REMOVE 30] expected=80 actual=","color":"yellow"},{"score":{"name":"#resource_test_value","objective":"resource_test"}}]

# --------------------------------------------------
# REMOVE 100 (must fail and leave 80)
# --------------------------------------------------
data modify storage three_body:resource input set value {type:"iron",amount:100}
function three_body:resource/remove with storage three_body:resource input
execute store result score #resource_test_value resource_test run scoreboard players get #iron material

scoreboard players add #resource_test_total resource_test 1
execute if score #resource_test_value resource_test matches 80 run scoreboard players add #resource_test_pass resource_test 1
execute unless score #resource_test_value resource_test matches 80 run scoreboard players add #resource_test_fail resource_test 1

tellraw @a [{"text":"[REMOVE 100] expected=80 actual=","color":"yellow"},{"score":{"name":"#resource_test_value","objective":"resource_test"}}]

# --------------------------------------------------
# GET
# --------------------------------------------------
data modify storage three_body:resource input set value {type:"iron"}
function three_body:resource/get with storage three_body:resource input
execute store result score #resource_test_value resource_test run data get storage three_body:resource output.amount 1

scoreboard players add #resource_test_total resource_test 1
execute if score #resource_test_value resource_test matches 80 run scoreboard players add #resource_test_pass resource_test 1
execute unless score #resource_test_value resource_test matches 80 run scoreboard players add #resource_test_fail resource_test 1

tellraw @a [{"text":"[GET]     expected=80 actual=","color":"yellow"},{"score":{"name":"#resource_test_value","objective":"resource_test"}}]

# --------------------------------------------------
# Summary
# --------------------------------------------------
tellraw @a {"text":"----------------------------------------","color":"dark_gray"}
tellraw @a [{"text":"TOTAL:  ","color":"gray"},{"score":{"name":"#resource_test_total","objective":"resource_test"}}]
tellraw @a [{"text":"PASSED: ","color":"green"},{"score":{"name":"#resource_test_pass","objective":"resource_test"}}]
tellraw @a [{"text":"FAILED: ","color":"red"},{"score":{"name":"#resource_test_fail","objective":"resource_test"}}]
execute if score #resource_test_fail resource_test matches 0 run tellraw @a {"text":"RESULT: ALL TESTS PASSED","color":"green","bold":true}
execute unless score #resource_test_fail resource_test matches 0 run tellraw @a {"text":"RESULT: TEST FAILED","color":"red","bold":true}
tellraw @a [{"text":"FINAL: #iron material = ","color":"gold"},{"score":{"name":"#iron","objective":"material"}}]
tellraw @a {"text":"========================================","color":"dark_gray"}
