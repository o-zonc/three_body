# Material API - remove resource
#
# Input:
# storage three_body:resource input {type:"iron",amount:10}
# Call:
# function three_body:resource/remove with storage three_body:resource input
#
# Returns 1 when the resource was removed, 0 when the amount was insufficient.
# The caller is responsible for supplying a valid material ID and a non-negative amount.

$execute if score #$(type) material matches $(amount).. run return run scoreboard players remove #$(type) material $(amount)
return 0
