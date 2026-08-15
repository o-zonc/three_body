execute at @s run playsound minecraft:block.copper_bulb.place weather @s ~ ~ ~ 1 0.7
function util/blank
execute if score #creation_restored trial matches 1 run function dimensions/nether/workshop/info/show_from_const {id:"11_2",slot:"태고의 부름",effect:"§c§l석영 불안정화§7 조건이 되는 §f§l석영 보유량§7 기준이 §6§l5,000§7개 뒤로 밀립니다."}
execute unless score #trial_active trial matches 1 run function dimensions/nether/workshop/info/show_from_const {id:"11_2",slot:"태고의 부름",effect:"§c§l석영 불안정화§7 조건이 되는 §f§l석영 보유량§7 기준이 §6§l5,000§7개 뒤로 밀립니다."}
execute if score #trial_active trial matches 1 unless score #trial_id trial matches 5 unless score #creation_restored trial matches 1 run function dimensions/nether/workshop/info/show_from_const {id:"11_2",slot:"태고의 부름",effect:"§c§l석영 불안정화§7 조건이 되는 §f§l석영 보유량§7 기준이 §6§l5,000§7개 뒤로 밀립니다."}
execute if score #trial_active trial matches 1 if score #trial_id trial matches 5 unless score #creation_restored trial matches 1 run function dimensions/nether/workshop/info/show_from_const {id:"11_2",slot:"태고의 부름",effect:"§7§m석영 불안정화 조건이 되는 석영 보유량 기준이 5,000개 뒤로 밀립니다."}
