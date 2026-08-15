execute unless score #quartz material = #quartz material run scoreboard players set #quartz material 0
scoreboard players set #thousand tmp 1000
scoreboard players operation #quartz_return_rate_int tmp = #quartz material
scoreboard players operation #quartz_return_rate_int tmp /= #thousand tmp
scoreboard players operation #quartz_return_rate_decimal tmp = #quartz material
scoreboard players operation #quartz_return_rate_decimal tmp %= #thousand tmp
data modify storage data tmp.material_shop.quartz_return_rate_text set value ["", { score: { name: "#quartz_return_rate_int", objective: "tmp" }, color: yellow }, { text: "§e." }]
execute if score #quartz_return_rate_decimal tmp matches ..9 run data modify storage data tmp.material_shop.quartz_return_rate_text append value { text: "§e00" }
execute if score #quartz_return_rate_decimal tmp matches 10..99 run data modify storage data tmp.material_shop.quartz_return_rate_text append value { text: "§e0" }
data modify storage data tmp.material_shop.quartz_return_rate_text append value { score: { name: "#quartz_return_rate_decimal", objective: "tmp" }, color: yellow }