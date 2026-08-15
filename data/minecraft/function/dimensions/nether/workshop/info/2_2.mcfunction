execute at @s run playsound minecraft:block.copper_bulb.place weather @s ~ ~ ~ 1 0.7
function util/blank
execute if score #creation_restored trial matches 1 run function dimensions/nether/workshop/info/show_from_const {id:"2_2",slot:"균열 재점화",effect:"§b§l네더 차원 압축§7 직후 §e§l석영 재생산 대기 시간§7이 수급 §6§l300§7회 동안 §6§l90%§7 추가로 감소합니다."}
execute unless score #trial_active trial matches 1 run function dimensions/nether/workshop/info/show_from_const {id:"2_2",slot:"균열 재점화",effect:"§b§l네더 차원 압축§7 직후 §e§l석영 재생산 대기 시간§7이 수급 §6§l300§7회 동안 §6§l90%§7 추가로 감소합니다."}
execute if score #trial_active trial matches 1 unless score #trial_id trial matches 5 unless score #creation_restored trial matches 1 run function dimensions/nether/workshop/info/show_from_const {id:"2_2",slot:"균열 재점화",effect:"§b§l네더 차원 압축§7 직후 §e§l석영 재생산 대기 시간§7이 수급 §6§l300§7회 동안 §6§l90%§7 추가로 감소합니다."}
execute if score #trial_active trial matches 1 if score #trial_id trial matches 5 unless score #creation_restored trial matches 1 run function dimensions/nether/workshop/info/show_from_const {id:"2_2",slot:"균열 재점화",effect:"§7§m네더 차원 압축 직후 석영 재생산 대기 시간이 수급 300회 동안 90% 추가로 감소합니다."}
