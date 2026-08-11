# Material API - remove resource
#
# Input storage:
# three_body:resource input {type:"iron",amount:10}
#
# The operation is performed only when the selected material has enough
# resources. No function macro is required.

execute store result score #resource_amount material run data get storage three_body:resource input.amount 1

execute if data storage three_body:resource input{type:"wood"} if score #wood material >= #resource_amount material run scoreboard players operation #wood material -= #resource_amount material
execute if data storage three_body:resource input{type:"stone"} if score #stone material >= #resource_amount material run scoreboard players operation #stone material -= #resource_amount material
execute if data storage three_body:resource input{type:"coal"} if score #coal material >= #resource_amount material run scoreboard players operation #coal material -= #resource_amount material
execute if data storage three_body:resource input{type:"copper"} if score #copper material >= #resource_amount material run scoreboard players operation #copper material -= #resource_amount material
execute if data storage three_body:resource input{type:"iron"} if score #iron material >= #resource_amount material run scoreboard players operation #iron material -= #resource_amount material
execute if data storage three_body:resource input{type:"gold"} if score #gold material >= #resource_amount material run scoreboard players operation #gold material -= #resource_amount material
execute if data storage three_body:resource input{type:"diamond"} if score #diamond material >= #resource_amount material run scoreboard players operation #diamond material -= #resource_amount material
execute if data storage three_body:resource input{type:"emerald"} if score #emerald material >= #resource_amount material run scoreboard players operation #emerald material -= #resource_amount material
execute if data storage three_body:resource input{type:"lapis"} if score #lapis material >= #resource_amount material run scoreboard players operation #lapis material -= #resource_amount material
execute if data storage three_body:resource input{type:"heat"} if score #heat material >= #resource_amount material run scoreboard players operation #heat material -= #resource_amount material
execute if data storage three_body:resource input{type:"cold"} if score #cold material >= #resource_amount material run scoreboard players operation #cold material -= #resource_amount material
execute if data storage three_body:resource input{type:"information"} if score #information material >= #resource_amount material run scoreboard players operation #information material -= #resource_amount material
execute if data storage three_body:resource input{type:"time"} if score #time material >= #resource_amount material run scoreboard players operation #time material -= #resource_amount material
execute if data storage three_body:resource input{type:"world_eye"} if score #world_eye material >= #resource_amount material run scoreboard players operation #world_eye material -= #resource_amount material
