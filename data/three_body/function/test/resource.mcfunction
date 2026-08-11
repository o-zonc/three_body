# ==========================================
# RESOURCE API TEST
# ==========================================
# Run with: /function three_body:test/resource
#
# This test intentionally does not use the API return value for SET/ADD.
# It verifies the actual material scoreboard state after every operation.
#
# Expected final state:
#   #iron material = 80

# Test objective.
scoreboard objectives add resource_test dummy
scoreboard players set #resource_test_total resource_test 0
scoreboard players set #resource_test_pass resource_test 0
scoreboard players set #resource_test_fail resource_test 0
scoreboard players set #resource_test_get resource_test 0

# Make the test deterministic.
scoreboard players set #iron material 0
function three_body:resource/init

# Header.
tellraw @a {"text":"========================================","color":"dark_gray"}
tellraw @a {"text":"        RESOURCE API TEST","color":"gold","bold":true}
tellraw @a {"text":"========================================","color":"dark_gray"}

# --------------------------------------------------
# SET: iron = 100
# --------------------------------------------------
data modify storage three_body:resource input set value {type:"iron",amount:100}
function three_body:resource/set with storage three_body:resource input

scoreboard players add #resource_test_total resource_test 1
execute if score #iron material matches 100 run scoreboard players add #resource_test_pass resource_test 1
execute unless score #iron material matches 100 run scoreboard players add #resource_test_fail resource_test 1
execute if score #iron material matches 100 run tellraw @a {"text":"[SET]    iron = 100                 PASS","color":"green"}
execute unless score #iron material matches 100 run tellraw @a {"text":"[SET]    iron = 100                 FAIL","color":"red"}

# --------------------------------------------------
# ADD: iron + 10 -> 110
# --------------------------------------------------
data modify storage three_body:resource input set value {type:"iron",amount:10}
function three_body:resource/add with storage three_body:resource input

scoreboard players add #resource_test_total resource_test 1
execute if score #iron material matches 110 run scoreboard players add #resource_test_pass resource_test 1
execute unless score #iron material matches 110 run scoreboard players add #resource_test_fail resource_test 1
execute if score #iron material matches 110 run tellraw @a {"text":"[ADD]    iron + 10 -> 110          PASS","color":"green"}
execute unless score #iron material matches 110 run tellraw @a {"text":"[ADD]    iron + 10 -> 110          FAIL","color":"red"}

# --------------------------------------------------
# HAS: iron >= 100 -> true
# --------------------------------------------------
data modify storage three_body:resource input set value {type:"iron",amount:100}
execute store result score #resource_test_get resource_test run function three_body:resource/has with storage three_body:resource input

scoreboard players add #resource_test_total resource_test 1
execute if score #resource_test_get resource_test matches 1 run scoreboard players add #resource_test_pass resource_test 1
execute unless score #resource_test_get resource_test matches 1 run scoreboard players add #resource_test_fail resource_test 1
execute if score #resource_test_get resource_test matches 1 run tellraw @a {"text":"[HAS]    iron >= 100              PASS","color":"green"}
execute unless score #resource_test_get resource_test matches 1 run tellraw @a {"text":"[HAS]    iron >= 100              FAIL","color":"red"}

# --------------------------------------------------
# REMOVE: iron - 30 -> 80
# --------------------------------------------------
data modify storage three_body:resource input set value {type:"iron",amount:30}
function three_body:resource/remove with storage three_body:resource input

scoreboard players add #resource_test_total resource_test 1
execute if score #iron material matches 80 run scoreboard players add #resource_test_pass resource_test 1
execute unless score #iron material matches 80 run scoreboard players add #resource_test_fail resource_test 1
execute if score #iron material matches 80 run tellraw @a {"text":"[REMOVE] iron - 30 -> 80       PASS","color":"green"}
execute unless score #iron material matches 80 run tellraw @a {"text":"[REMOVE] iron - 30 -> 80       FAIL","color":"red"}

# --------------------------------------------------
# REMOVE FAILURE: iron - 100 -> must remain 80
# --------------------------------------------------
data modify storage three_body:resource input set value {type:"iron",amount:100}
function three_body:resource/remove with storage three_body:resource input

scoreboard players add #resource_test_total resource_test 1
execute if score #iron material matches 80 run scoreboard players add #resource_test_pass resource_test 1
execute unless score #iron material matches 80 run scoreboard players add #resource_test_fail resource_test 1
execute if score #iron material matches 80 run tellraw @a {"text":"[REMOVE] iron - 100 -> FAIL      PASS","color":"green"}
execute unless score #iron material matches 80 run tellraw @a {"text":"[REMOVE] iron - 100 -> FAIL      FAIL","color":"red"}

# --------------------------------------------------
# GET: iron -> output.amount = 80
# --------------------------------------------------
data modify storage three_body:resource input set value {type:"iron"}
function three_body:resource/get with storage three_body:resource input
execute store result score #resource_test_get resource_test run data get storage three_body:resource output.amount 1

scoreboard players add #resource_test_total resource_test 1
execute if score #resource_test_get resource_test matches 80 run scoreboard players add #resource_test_pass resource_test 1
execute unless score #resource_test_get resource_test matches 80 run scoreboard players add #resource_test_fail resource_test 1
execute if score #resource_test_get resource_test matches 80 run tellraw @a {"text":"[GET]     iron = 80                 PASS","color":"green"}
execute unless score #resource_test_get resource_test matches 80 run tellraw @a {"text":"[GET]     iron = 80                 FAIL","color":"red"}

# --------------------------------------------------
# Summary
# --------------------------------------------------
tellraw @a {"text":"----------------------------------------","color":"dark_gray"}
tellraw @a [{"text":"TOTAL:  ","color":"gray"},{"score":{"name":"#resource_test_total","objective":"resource_test"}}]
tellraw @a [{"text":"PASSED: ","color":"green"},{"score":{"name":"#resource_test_pass","objective":"resource_test"}}]
tellraw @a [{"text":"FAILED: ","color":"red"},{"score":{"name":"#resource_test_fail","objective":"resource_test"}}]
execute if score #resource_test_fail resource_test matches 0 run tellraw @a {"text":"RESULT: ALL TESTS PASSED","color":"green","bold":true}
execute unless score #resource_test_fail resource_test matches 0 run tellraw @a {"text":"RESULT: TEST FAILED","color":"red","bold":true}
tellraw @a [{"text":"FINAL: #iron material = ","color":"gold"},{"score":{"name":"#iron","objective":"material"}},{"text":" (expected 80)","color":"gray"}]
tellraw @a {"text":"========================================","color":"dark_gray"}
