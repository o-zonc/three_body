execute at @s run playsound minecraft:block.copper_bulb.place weather @s ~ ~ ~ 1 0.7
function util/blank
execute if score #creation_restored trial matches 1 run function dimensions/nether/workshop/info/show_from_const {id:"4_2",slot:"숙련된 발굴",effect:"§f§l석영§7의 수급량이 §6§l3§7개 증가합니다.\n\n또한 §f§l석영§7이 필요한 §e§l업그레이드§7를 구매할 때 석영을 §6§l소모하지 않습니다.§7\n\n§8(요구량은 소지해야 함)"}
execute unless score #trial_active trial matches 1 run function dimensions/nether/workshop/info/show_from_const {id:"4_2",slot:"숙련된 발굴",effect:"§f§l석영§7의 수급량이 §6§l3§7개 증가합니다.\n\n또한 §f§l석영§7이 필요한 §e§l업그레이드§7를 구매할 때 석영을 §6§l소모하지 않습니다.§7\n\n§8(요구량은 소지해야 함)"}
execute if score #trial_active trial matches 1 unless score #creation_restored trial matches 1 run function dimensions/nether/workshop/info/show_from_const {id:"4_2",slot:"숙련된 발굴",effect:"§7§m석영의 수급량이 3개 증가합니다.\n\n또한 석영이 필요한 업그레이드를 구매할 때 석영을 소모하지 않습니다.\n\n(요구량은 소지해야 함)"}
