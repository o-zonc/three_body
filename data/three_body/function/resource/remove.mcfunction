# Material API - remove resource
#
# Input storage:
# three_body:resource input {type:"iron",amount:10}
#
$execute if score #$(type) material matches $(amount).. run scoreboard players remove #$(type) material $(amount)
execute store success score #resource_remove_success resource_test run $execute if score #$(type) material matches $(amount)..
execute if score #resource_remove_success resource_test matches 1 run function three_body:resource/sidebar/update
