# Material API - add resource
#
# Input storage:
# three_body:resource input {type:"iron",amount:10}
#
# The amount is copied into a temporary scoreboard and applied through
# explicit material branches. No function macro is required.

execute store result score #resource_amount material run data get storage three_body:resource input.amount 1

execute if data storage three_body:resource input{type:"wood"} run scoreboard players operation #wood material += #resource_amount material
execute if data storage three_body:resource input{type:"stone"} run scoreboard players operation #stone material += #resource_amount material
execute if data storage three_body:resource input{type:"coal"} run scoreboard players operation #coal material += #resource_amount material
execute if data storage three_body:resource input{type:"copper"} run scoreboard players operation #copper material += #resource_amount material
execute if data storage three_body:resource input{type:"iron"} run scoreboard players operation #iron material += #resource_amount material
execute if data storage three_body:resource input{type:"gold"} run scoreboard players operation #gold material += #resource_amount material
execute if data storage three_body:resource input{type:"diamond"} run scoreboard players operation #diamond material += #resource_amount material
execute if data storage three_body:resource input{type:"emerald"} run scoreboard players operation #emerald material += #resource_amount material
execute if data storage three_body:resource input{type:"lapis"} run scoreboard players operation #lapis material += #resource_amount material
execute if data storage three_body:resource input{type:"heat"} run scoreboard players operation #heat material += #resource_amount material
execute if data storage three_body:resource input{type:"cold"} run scoreboard players operation #cold material += #resource_amount material
execute if data storage three_body:resource input{type:"information"} run scoreboard players operation #information material += #resource_amount material
execute if data storage three_body:resource input{type:"time"} run scoreboard players operation #time material += #resource_amount material
execute if data storage three_body:resource input{type:"world_eye"} run scoreboard players operation #world_eye material += #resource_amount material
