execute at @s run playsound minecraft:block.copper_bulb.place weather @s ~ ~ ~ 1 0.7
function util/blank
execute if score #creation_restored trial matches 1 run function dimensions/nether/workshop/info/show_from_const {id:"9_1",slot:"자연의 선회",effect:"§f§l나무§7 보유량 §6§l100,000§7개마다 §f§l석영§7 수급량이 추가로 §6§l1§7개 상승합니다.\n\n§8(이 효과로 추가되는 석영 수급량은 최대 10개입니다.)"}
execute unless score #trial_active trial matches 1 run function dimensions/nether/workshop/info/show_from_const {id:"9_1",slot:"자연의 선회",effect:"§f§l나무§7 보유량 §6§l100,000§7개마다 §f§l석영§7 수급량이 추가로 §6§l1§7개 상승합니다.\n\n§8(이 효과로 추가되는 석영 수급량은 최대 10개입니다.)"}
execute if score #trial_active trial matches 1 unless score #creation_restored trial matches 1 run function dimensions/nether/workshop/info/show_from_const {id:"9_1",slot:"자연의 선회",effect:"§7§m나무 보유량 100,000개마다 석영 수급량이 추가로 1개 상승합니다.\n\n(이 효과로 추가되는 석영 수급량은 최대 10개입니다.)"}
