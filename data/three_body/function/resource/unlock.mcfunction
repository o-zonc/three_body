# Material API - unlock a resource
#
# Input storage:
# three_body:resource input {type:"iron"}
#
# Marks the resource as unlocked (does not check or consume any cost -
# for the cost-checked player-facing flow, see resource/internal/unlock)
# and refreshes the sidebar.

$scoreboard players set #$(type) unlock 1
function three_body:resource/sidebar/update
