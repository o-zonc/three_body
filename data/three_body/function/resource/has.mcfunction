# Material API - check resource amount
#
# Input storage:
# three_body:resource input {type:"iron",amount:50}
#
# Returns 1 when the resource amount is sufficient, otherwise 0.
# No function macro is required.

execute store result score #resource_amount material run data get storage three_body:resource input.amount 1

execute if data storage three_body:resource input{type:"wood"} if score #wood material >= #resource_amount material run return 1
execute if data storage three_body:resource input{type:"stone"} if score #stone material >= #resource_amount material run return 1
execute if data storage three_body:resource input{type:"coal"} if score #coal material >= #resource_amount material run return 1
execute if data storage three_body:resource input{type:"copper"} if score #copper material >= #resource_amount material run return 1
execute if data storage three_body:resource input{type:"iron"} if score #iron material >= #resource_amount material run return 1
execute if data storage three_body:resource input{type:"gold"} if score #gold material >= #resource_amount material run return 1
execute if data storage three_body:resource input{type:"diamond"} if score #diamond material >= #resource_amount material run return 1
execute if data storage three_body:resource input{type:"emerald"} if score #emerald material >= #resource_amount material run return 1
execute if data storage three_body:resource input{type:"lapis"} if score #lapis material >= #resource_amount material run return 1
execute if data storage three_body:resource input{type:"heat"} if score #heat material >= #resource_amount material run return 1
execute if data storage three_body:resource input{type:"cold"} if score #cold material >= #resource_amount material run return 1
execute if data storage three_body:resource input{type:"information"} if score #information material >= #resource_amount material run return 1
execute if data storage three_body:resource input{type:"time"} if score #time material >= #resource_amount material run return 1
execute if data storage three_body:resource input{type:"world_eye"} if score #world_eye material >= #resource_amount material run return 1

return 0
