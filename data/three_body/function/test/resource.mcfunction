# ==========================================
# RESOURCE API TEST
# ==========================================
#
# Tests the material API using macro arguments.
# Run with:
#   /function three_body:test/resource
#
# Expected flow:
#   1. Initialize material entries.
#   2. Set iron to 100.
#   3. Add 10 iron -> 110.
#   4. Check 100 iron -> success.
#   5. Remove 30 iron -> 80.
#   6. Attempt to remove 100 iron -> failure, remains 80.
#   7. Get iron amount -> output.amount = 80.
#

function three_body:resource/init

# Set iron to 100
data modify storage three_body:resource input set value {type:"iron",amount:100}
function three_body:resource/set with storage three_body:resource input

tellraw @a {"text":"[Resource Test] set iron = 100","color":"gold"}

# Add 10 iron
data modify storage three_body:resource input set value {type:"iron",amount:10}
function three_body:resource/add with storage three_body:resource input

tellraw @a {"text":"[Resource Test] add iron +10 (expected 110)","color":"yellow"}

# Check whether we have at least 100 iron
data modify storage three_body:resource input set value {type:"iron",amount:100}
execute store success score #resource_test_has resource_test run function three_body:resource/has with storage three_body:resource input

tellraw @a [{"text":"[Resource Test] has iron >= 100: ","color":"yellow"},{"score":{"name":"#resource_test_has","objective":"resource_test"}}]

# Remove 30 iron
data modify storage three_body:resource input set value {type:"iron",amount:30}
execute store success score #resource_test_remove resource_test run function three_body:resource/remove with storage three_body:resource input

tellraw @a [{"text":"[Resource Test] remove iron 30: ","color":"yellow"},{"score":{"name":"#resource_test_remove","objective":"resource_test"}},{"text":" (expected 1, remaining 80)","color":"gray"}]

# Attempt to remove more than available
data modify storage three_body:resource input set value {type:"iron",amount:100}
execute store success score #resource_test_remove_fail resource_test run function three_body:resource/remove with storage three_body:resource input

tellraw @a [{"text":"[Resource Test] remove iron 100: ","color":"yellow"},{"score":{"name":"#resource_test_remove_fail","objective":"resource_test"}},{"text":" (expected 0, remaining 80)","color":"gray"}]

# Get current iron amount
data modify storage three_body:resource input set value {type:"iron"}
function three_body:resource/get with storage three_body:resource input

tellraw @a [{"text":"[Resource Test] get iron = ","color":"yellow"},{"nbt":"output.amount","storage":"three_body:resource"},{"text":" (expected 80)","color":"gray"}]

# Final direct scoreboard display
tellraw @a [{"text":"[Resource Test] #iron material = ","color":"gold"},{"score":{"name":"#iron","objective":"material"}},{"text":" (expected 80)","color":"gray"}]
