# #cost_obsidian cost 만큼 흑요석 메타 아이템을 제거한다.
execute unless score #cost_obsidian cost matches 1.. run return 0
execute store result storage data tmp.obsidian_cost.amount int 1 run scoreboard players get #cost_obsidian cost
function meta/obsidian/take_cost_apply with storage data tmp.obsidian_cost
function meta/sync
return 1
