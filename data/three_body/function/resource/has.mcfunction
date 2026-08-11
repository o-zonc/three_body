# Material API - check resource amount
#
# Input storage:
# three_body:resource input {type:"iron",amount:50}
#
# Returns 1 when the resource amount is sufficient, otherwise 0.

$execute if score #$(type) material matches $(amount).. run return 1
return 0