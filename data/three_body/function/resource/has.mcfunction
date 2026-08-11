# Material API - check resource amount
#
# Input:
# storage three_body:resource input {type:"iron",amount:50}
# Call:
# function three_body:resource/has with storage three_body:resource input
#
# Returns 1 when the resource amount is sufficient, otherwise 0.
# The caller is responsible for supplying a valid material ID and a non-negative amount.

execute if score #$(type) material matches $(amount).. run return 1
return 0
