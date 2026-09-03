# 정상 비용 전체를 흑요석 1개로 대체하는 결제 경로
scoreboard players set #cost_obsidian cost 1
function meta/obsidian/take_cost
execute unless entity @a[tag=accelerator_experiment_running] run title @s actionbar {text:"흑요석으로 비용을 지불함",color:"dark_purple",italic:false}
scoreboard players set #obsidian_cost_bypass tmp 0
scoreboard players set #obsidian_substitution_count tmp 0
scoreboard players set #cost_prepared tmp 0
return 1
