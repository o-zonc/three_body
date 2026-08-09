# 로드 시

function const_def

execute as @a[tag=!dev] run tag @s add player

bossbar set overworld visible false
bossbar set nether visible false



function drill:_/stop_anim
function iconblock:_/stop_anim
# function trial/structure/save_all

execute unless score #trial_id trial matches 5 run schedule function drill:a/default/play_anim_loop 1s
schedule function iconblock:a/default/play_anim_loop 1s