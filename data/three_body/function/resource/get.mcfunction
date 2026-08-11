# Material API - get resource
#
# Input:
# storage three_body:resource input {type:"iron"}
# Call:
# function three_body:resource/get with storage three_body:resource input
#
# Output:
# storage three_body:resource output.amount
#
# The caller is responsible for supplying a valid material ID.

$execute store result storage three_body:resource output.amount int 1 run scoreboard players get #$(type) material
return 1
