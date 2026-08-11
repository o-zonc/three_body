# Material API - check whether a resource is unlocked
#
# Input storage:
# three_body:resource input {type:"iron"}
#
# Returns 1 when unlocked, otherwise 0.

$execute if score #$(type) material_unlocked matches 1 run return 1
return 0
