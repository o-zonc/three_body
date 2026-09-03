# 타임머신 최초 건설 시 title 기반 결말만 실행한다.
function story/ending/prepare

execute unless entity @a[tag=accelerator_experiment_running] run title @a clear
title @a times 10 60 20
execute as @a[tag=ending_active] at @s run playsound ui.toast.challenge_complete master @s ~ ~ ~ 0.9 0.7
title @a[tag=ending_active] title {"text":"삼체 (三體)","color":"#F971BE","shadow_color":[0.44, 0.8, 0.98, 1.0]}
title @a[tag=ending_active] subtitle {"text":"3 Body Problem","color":"gray","italic":true}


schedule function story/ending/01_answer 5s
schedule function story/ending/02_epilogue 11s
schedule function story/ending/03_credits 17s
schedule function story/ending/first_finish 25s
