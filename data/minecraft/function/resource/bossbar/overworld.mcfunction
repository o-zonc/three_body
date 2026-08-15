bossbar add overworld ""

bossbar set overworld color white
bossbar set overworld max 1
bossbar set overworld value 1
bossbar set overworld style progress
bossbar set overworld players @a[tag=player]
bossbar set overworld visible true



execute unless score #wood material = #wood material run scoreboard players set #wood material 0
execute unless score #stone material = #stone material run scoreboard players set #stone material 0
execute unless score #coal material = #coal material run scoreboard players set #coal material 0
execute unless score #iron material = #iron material run scoreboard players set #iron material 0
execute unless score #obsidian material = #obsidian material run scoreboard players set #obsidian material 0
execute unless score #compressed_overworld_crystal material = #compressed_overworld_crystal material run scoreboard players set #compressed_overworld_crystal material 0
execute unless score #spirit material = #spirit material run scoreboard players set #spirit material 0



data modify storage data tmp.bar_text.overworld.texts set value [{ text: "Wd ", extra: [ { score: { name: "#wood", objective: "material" } } ], color: yellow, bold: true }]

execute if score #stone unlock matches 1 run data modify storage data tmp.bar_text.overworld.texts append value { text: "St ", extra: [ { score: { name: "#stone", objective: "material" } } ], color: gray, bold: true }
execute unless score #stone unlock matches 1 if score #overworld compress matches 1.. run data modify storage data tmp.bar_text.overworld.texts append value { text: "St ", extra: [ { score: { name: "#stone", objective: "material" } } ], color: gray, bold: true }

execute if score #cave unlock matches 1 run data modify storage data tmp.bar_text.overworld.texts append value { text: "Co ", extra: [ { score: { name: "#coal", objective: "material" } } ], color: dark_gray, bold: true }
execute if score #cave unlock matches 1 run data modify storage data tmp.bar_text.overworld.texts append value { text: "Ir ", extra: [ { score: { name: "#iron", objective: "material" } } ], color: white, bold: true }
execute if score #cave unlock matches 1 run data modify storage data tmp.bar_text.overworld.texts append value { text: "Ob ", extra: [ { score: { name: "#obsidian", objective: "material" } } ], color: dark_purple, bold: true, shadow_color: -721419265, bold: true }
execute unless score #cave unlock matches 1 if score #overworld compress matches 1.. run data modify storage data tmp.bar_text.overworld.texts append value { text: "Co ", extra: [ { score: { name: "#coal", objective: "material" } } ], color: dark_gray, bold: true }
execute unless score #cave unlock matches 1 if score #overworld compress matches 1.. run data modify storage data tmp.bar_text.overworld.texts append value { text: "Ir ", extra: [ { score: { name: "#iron", objective: "material" } } ], color: white, bold: true }
execute unless score #cave unlock matches 1 if score #overworld compress matches 1.. run data modify storage data tmp.bar_text.overworld.texts append value { text: "Ob ", extra: [ { score: { name: "#obsidian", objective: "material" } } ], color: dark_purple, bold: true, shadow_color: -721419265, bold: true }
execute if score #overworld compress matches 1.. run data modify storage data tmp.bar_text.overworld.texts append value { text: "OC ", extra: [ { score: { name: "#compressed_overworld_crystal", objective: "material" } } ], color: aqua, bold: true, shadow_color: -1429069738, bold: true }

bossbar set overworld name { storage: "data", nbt: "tmp.bar_text.overworld.texts[]", interpret: true, separator: { text: " | ", color: white, bold: false } }
