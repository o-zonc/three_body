execute at @s run playsound minecraft:block.copper_bulb.place weather @s ~ ~ ~ 1 0.7
function util/blank
execute if score #creation_restored trial matches 1 run function dimensions/nether/workshop/info/show_from_const {id:"8_1",slot:"적성 동기화",effect:"§3§l도구 업그레이드 수준§7만큼 §f§l석영§7을 추가로 수급합니다.\n\n§8(도구에 표기된 Lv 값 만큼 증가)§7\n\n또한 §f§l석영§7이 §6§l2,500개 미만§7일 때 발생하는 §c§l석영 불안정화§7가 사라집니다."}
execute unless score #trial_active trial matches 1 run function dimensions/nether/workshop/info/show_from_const {id:"8_1",slot:"적성 동기화",effect:"§3§l도구 업그레이드 수준§7만큼 §f§l석영§7을 추가로 수급합니다.\n\n§8(도구에 표기된 Lv 값 만큼 증가)§7\n\n또한 §f§l석영§7이 §6§l2,500개 미만§7일 때 발생하는 §c§l석영 불안정화§7가 사라집니다."}
execute if score #trial_active trial matches 1 unless score #creation_restored trial matches 1 run function dimensions/nether/workshop/info/show_from_const {id:"8_1",slot:"적성 동기화",effect:"§7§m도구 업그레이드 수준만큼 석영을 추가로 수급합니다.\n\n(도구에 표기된 Lv 값 만큼 증가)\n\n또한 석영이 2,500개 미만일 때 발생하는 석영 불안정화가 사라집니다."}
