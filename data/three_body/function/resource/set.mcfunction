# Material API - set resource
#
# Input storage:
# three_body:resource input {type:"iron",amount:100}

$scoreboard players set #$(type) material $(amount)
function three_body:resource/sidebar/update
