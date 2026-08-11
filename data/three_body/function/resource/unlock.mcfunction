# Material API - unlock a resource
#
# Input storage:
# three_body:resource input {type:"iron"}
#
# Marks the resource as unlocked and refreshes the sidebar.

$scoreboard players set #$(type) material_unlocked 1
function three_body:resource/sidebar/update
