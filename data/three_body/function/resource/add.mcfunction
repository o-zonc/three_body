# Material API - add resource
#
# Input storage:
# three_body:resource input {type:"iron",amount:10}
#
# The amount is copied into a temporary scoreboard and applied through
# explicit material branches. No function macro is required.
$scoreboard players add #$(type) material $(amount)