execute at @s run playsound minecraft:block.copper_bulb.place weather @s ~ ~ ~ 1 0.7
function util/blank
execute if score #creation_restored trial matches 1 run function dimensions/nether/workshop/info/show_from_const {id:"3_1",slot:"아종족 친화",effect:"§b§l차원 압축§7 시 §3§l피글린 머리 해금 레벨§7과 §3§l작동 시간 업그레이드§7를 §6§l초기화하지 않습니다."}
execute unless score #trial_active trial matches 1 run function dimensions/nether/workshop/info/show_from_const {id:"3_1",slot:"아종족 친화",effect:"§b§l차원 압축§7 시 §3§l피글린 머리 해금 레벨§7과 §3§l작동 시간 업그레이드§7를 §6§l초기화하지 않습니다."}
execute if score #trial_active trial matches 1 unless score #trial_id trial matches 5 unless score #creation_restored trial matches 1 run function dimensions/nether/workshop/info/show_from_const {id:"3_1",slot:"아종족 친화",effect:"§b§l차원 압축§7 시 §3§l피글린 머리 해금 레벨§7과 §3§l작동 시간 업그레이드§7를 §6§l초기화하지 않습니다."}
execute if score #trial_active trial matches 1 if score #trial_id trial matches 5 unless score #creation_restored trial matches 1 run function dimensions/nether/workshop/info/show_from_const {id:"3_1",slot:"아종족 친화",effect:"§7§m차원 압축 시 피글린 머리 해금 레벨과 작동 시간 업그레이드를 초기화하지 않습니다."}
