# Material API - remove resource
#
# Input storage:
# three_body:resource input {type:"iron",amount:10}
#
$execute if score #$(type) material matches $(amount).. run scoreboard players remove #$(type) material $(amount)