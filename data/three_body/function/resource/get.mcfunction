# Material API - get resource
#
# Input storage:
# three_body:resource input {type:"iron"}
#
# Output:
# three_body:resource output.amount
#
# No function macro is required.

# Clear the previous output before resolving the requested material.
data remove storage three_body:resource output.amount

execute if data storage three_body:resource input{type:"wood"} run execute store result storage three_body:resource output.amount int 1 run scoreboard players get #wood material
execute if data storage three_body:resource input{type:"stone"} run execute store result storage three_body:resource output.amount int 1 run scoreboard players get #stone material
execute if data storage three_body:resource input{type:"coal"} run execute store result storage three_body:resource output.amount int 1 run scoreboard players get #coal material
execute if data storage three_body:resource input{type:"copper"} run execute store result storage three_body:resource output.amount int 1 run scoreboard players get #copper material
execute if data storage three_body:resource input{type:"iron"} run execute store result storage three_body:resource output.amount int 1 run scoreboard players get #iron material
execute if data storage three_body:resource input{type:"gold"} run execute store result storage three_body:resource output.amount int 1 run scoreboard players get #gold material
execute if data storage three_body:resource input{type:"diamond"} run execute store result storage three_body:resource output.amount int 1 run scoreboard players get #diamond material
execute if data storage three_body:resource input{type:"emerald"} run execute store result storage three_body:resource output.amount int 1 run scoreboard players get #emerald material
execute if data storage three_body:resource input{type:"lapis"} run execute store result storage three_body:resource output.amount int 1 run scoreboard players get #lapis material
execute if data storage three_body:resource input{type:"heat"} run execute store result storage three_body:resource output.amount int 1 run scoreboard players get #heat material
execute if data storage three_body:resource input{type:"cold"} run execute store result storage three_body:resource output.amount int 1 run scoreboard players get #cold material
execute if data storage three_body:resource input{type:"information"} run execute store result storage three_body:resource output.amount int 1 run scoreboard players get #information material
execute if data storage three_body:resource input{type:"time"} run execute store result storage three_body:resource output.amount int 1 run scoreboard players get #time material
execute if data storage three_body:resource input{type:"world_eye"} run execute store result storage three_body:resource output.amount int 1 run scoreboard players get #world_eye material

return 1
