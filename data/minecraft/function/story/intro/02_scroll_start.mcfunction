# 인트로 2단계 - 타이틀 롤(스크롤) 시작

execute unless entity @a[tag=accelerator_experiment_running] run title @a clear
scoreboard players set #block intro 0

schedule function story/intro/03_scroll_tick 1t
