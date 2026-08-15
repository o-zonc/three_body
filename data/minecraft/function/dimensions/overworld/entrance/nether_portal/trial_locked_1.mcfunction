execute at @s run playsound ui.button.click weather @s ~ ~ ~ 1 2
function util/blank

tellraw @s ["", \
  { text: "  §6§l< 구역 '네더 포탈' >§r" },\
  { text: "\n\n  §c§l§o그곳에 갈 필요는 없지 않나 싶은데?" },\
  { text: "\n" },\
]