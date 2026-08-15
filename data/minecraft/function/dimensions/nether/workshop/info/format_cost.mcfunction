# tmp.nether_workshop.entry.cost를 세 자리 콤마가 포함된 텍스트 컴포넌트로 변환
execute store result score #nether_workshop_cost tmp run data get storage data tmp.nether_workshop.entry.cost
scoreboard players set #nether_workshop_cost_thousand tmp 1000
scoreboard players set #nether_workshop_cost_million tmp 1000000
scoreboard players operation #nether_workshop_cost_high tmp = #nether_workshop_cost tmp
scoreboard players operation #nether_workshop_cost_high tmp /= #nether_workshop_cost_million tmp
scoreboard players operation #nether_workshop_cost_mid tmp = #nether_workshop_cost tmp
scoreboard players operation #nether_workshop_cost_mid tmp /= #nether_workshop_cost_thousand tmp
scoreboard players operation #nether_workshop_cost_mid tmp %= #nether_workshop_cost_thousand tmp
scoreboard players operation #nether_workshop_cost_low tmp = #nether_workshop_cost tmp
scoreboard players operation #nether_workshop_cost_low tmp %= #nether_workshop_cost_thousand tmp

data modify storage data tmp.nether_workshop.cost_text set value []

execute if score #nether_workshop_cost_high tmp matches 1.. run data modify storage data tmp.nether_workshop.cost_text append value { score: { name: "#nether_workshop_cost_high", objective: "tmp" }, color: "gold" }
execute if score #nether_workshop_cost_high tmp matches 1.. run data modify storage data tmp.nether_workshop.cost_text append value { text: ",", color: "gold" }
execute if score #nether_workshop_cost_high tmp matches 1.. if score #nether_workshop_cost_mid tmp matches ..9 run data modify storage data tmp.nether_workshop.cost_text append value { text: "00", color: "gold" }
execute if score #nether_workshop_cost_high tmp matches 1.. if score #nether_workshop_cost_mid tmp matches 10..99 run data modify storage data tmp.nether_workshop.cost_text append value { text: "0", color: "gold" }
execute if score #nether_workshop_cost_high tmp matches 1.. run data modify storage data tmp.nether_workshop.cost_text append value { score: { name: "#nether_workshop_cost_mid", objective: "tmp" }, color: "gold" }
execute if score #nether_workshop_cost_high tmp matches 1.. run data modify storage data tmp.nether_workshop.cost_text append value { text: ",", color: "gold" }
execute if score #nether_workshop_cost_high tmp matches 1.. if score #nether_workshop_cost_low tmp matches ..9 run data modify storage data tmp.nether_workshop.cost_text append value { text: "00", color: "gold" }
execute if score #nether_workshop_cost_high tmp matches 1.. if score #nether_workshop_cost_low tmp matches 10..99 run data modify storage data tmp.nether_workshop.cost_text append value { text: "0", color: "gold" }
execute if score #nether_workshop_cost_high tmp matches 1.. run data modify storage data tmp.nether_workshop.cost_text append value { score: { name: "#nether_workshop_cost_low", objective: "tmp" }, color: "gold" }

execute unless score #nether_workshop_cost_high tmp matches 1.. if score #nether_workshop_cost_mid tmp matches 1.. run data modify storage data tmp.nether_workshop.cost_text append value { score: { name: "#nether_workshop_cost_mid", objective: "tmp" }, color: "gold" }
execute unless score #nether_workshop_cost_high tmp matches 1.. if score #nether_workshop_cost_mid tmp matches 1.. run data modify storage data tmp.nether_workshop.cost_text append value { text: ",", color: "gold" }
execute unless score #nether_workshop_cost_high tmp matches 1.. if score #nether_workshop_cost_mid tmp matches 1.. if score #nether_workshop_cost_low tmp matches ..9 run data modify storage data tmp.nether_workshop.cost_text append value { text: "00", color: "gold" }
execute unless score #nether_workshop_cost_high tmp matches 1.. if score #nether_workshop_cost_mid tmp matches 1.. if score #nether_workshop_cost_low tmp matches 10..99 run data modify storage data tmp.nether_workshop.cost_text append value { text: "0", color: "gold" }
execute unless score #nether_workshop_cost_high tmp matches 1.. if score #nether_workshop_cost_mid tmp matches 1.. run data modify storage data tmp.nether_workshop.cost_text append value { score: { name: "#nether_workshop_cost_low", objective: "tmp" }, color: "gold" }

execute unless score #nether_workshop_cost_high tmp matches 1.. unless score #nether_workshop_cost_mid tmp matches 1.. run data modify storage data tmp.nether_workshop.cost_text append value { score: { name: "#nether_workshop_cost_low", objective: "tmp" }, color: "gold" }
