# Material API - add resource
#
# Input:
# storage three_body:resource input {type:"iron",amount:10}
# Call:
# function three_body:resource/add with storage three_body:resource input
#
# The caller is responsible for supplying a valid material ID and a non-negative amount.

$scoreboard players add #$(type) material $(amount)
return 1
