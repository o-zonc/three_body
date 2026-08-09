bossbar add nether ""

bossbar set nether color red
bossbar set nether max 1
bossbar set nether value 1
bossbar set nether style progress
bossbar set nether players @a[tag=player]
bossbar set nether visible true



execute unless score #quartz material = #quartz material run scoreboard players set #quartz material 0
execute unless score #quartz unlock = #quartz unlock run scoreboard players set #quartz unlock 0
execute unless score #gold material = #gold material run scoreboard players set #gold material 0
execute unless score #blaze_powder material = #blaze_powder material run scoreboard players set #blaze_powder material 0



data modify storage data tmp.bar_text.nether.texts set value []

execute if score #quartz unlock matches 1 run data modify storage data tmp.bar_text.nether.texts append value { text: "Qz ", extra: [ { score: { name: "#quartz", objective: "material" } } ], color: white, bold: true, shadow_color: -1426128896 }
execute unless score #quartz unlock matches 1 if score #nether compress matches 1.. run data modify storage data tmp.bar_text.nether.texts append value { text: "Qz ", extra: [ { score: { name: "#quartz", objective: "material" } } ], color: white, bold: true, shadow_color: -1426128896 }

execute if score #blaze unlock matches 1 run data modify storage data tmp.bar_text.nether.texts append value { text: "Bp ", extra: [ { score: { name: "#blaze_powder", objective: "material" } } ], color: red, bold: true }
execute unless score #blaze unlock matches 1 if score #nether compress matches 1.. run data modify storage data tmp.bar_text.nether.texts append value { text: "Bp ", extra: [ { score: { name: "#blaze_powder", objective: "material" } } ], color: red, bold: true }

execute if score #gold unlock matches 1 run data modify storage data tmp.bar_text.nether.texts append value { text: "Gd ", extra: [ { score: { name: "#gold", objective: "material" } } ], color: gold, bold: true }
execute unless score #gold unlock matches 1 if score #nether compress matches 1.. run data modify storage data tmp.bar_text.nether.texts append value { text: "Gd ", extra: [ { score: { name: "#gold", objective: "material" } } ], color: gold, bold: true }

execute if score #nether compress matches 1.. run data modify storage data tmp.bar_text.nether.texts append value { text: "NC ", extra: [ { score: { name: "#compressed_nether_crystal", objective: "material" } } ], color: black, bold: true }

bossbar set nether name { storage: "data", nbt: "tmp.bar_text.nether.texts[]", interpret: true, separator: { text: " | ", color: white, bold: false } }
