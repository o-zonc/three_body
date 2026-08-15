# Generic resource unlock helper.
#
# Macro input compound:
# three_body:resource input {type:"stone"}
#
# Looks up the resource's configured unlock cost (resource/config), pays it
# through the generic Material API, and marks the resource unlocked.
# Returns 1 on success. On insufficient resources nothing is consumed and the
# function returns fail (use `execute store success ...` to capture this).
# When the resource is already unlocked this is a no-op that returns 0.

$execute if score #$(type) unlock matches 1.. run return 0

data remove storage three_body:resource input
$data modify storage three_body:resource input set from storage three_body:resource config.$(type).unlock_cost

# Abort when the configured unlock cost is not affordable.
execute store result score #resource_test_tmp resource_test run function three_body:resource/has with storage three_body:resource.input
execute unless score #resource_test_tmp resource_test matches 1 run return fail

# Pay the cost.
function three_body:resource/remove with storage three_body:resource.input
execute unless score #resource_remove_success resource_test matches 1 run return fail

$scoreboard players set #$(type) unlock 1
$scoreboard players set #$(type)_regen_lvl upgrade 0
return 1
