# Material API - set resource
#
# Input:
# storage three_body:resource input {type:"iron",amount:100}
# Call:
# function three_body:resource/set with storage three_body:resource input
#
# The caller is responsible for supplying a valid material ID and a non-negative amount.

$scoreboard players set #$(type) material $(amount)
return 1
