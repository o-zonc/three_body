execute at @s run playsound ui.button.click weather @s ~ ~ ~ 1 2
function util/blank

tellraw @s ["", \
  { text: "  §6§l< 구역 '네더 포탈' >§r" },\
  { text: "\n\n  §9§l§o거긴 지금 허락된 영역이 아니란다, 우매한 것." },\
  { text: "\n" },\
]