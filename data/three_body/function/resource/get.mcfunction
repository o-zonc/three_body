# Material API - get resource amount
#
# Input storage:
# three_body:resource input {type:"iron"}
#
# Output storage:
# three_body:resource output {amount:100}

$execute store result storage three_body:resource output.amount int 1 run scoreboard players get #$(type) material