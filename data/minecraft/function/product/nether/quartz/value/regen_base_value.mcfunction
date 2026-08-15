execute unless score #quartz material = #quartz material run scoreboard players set #quartz material 0
scoreboard players set #nether_workshop_effects_disabled tmp 0
execute if score #trial_active trial matches 1 if score #trial_id trial matches 5 unless score #creation_restored trial matches 1 run scoreboard players set #nether_workshop_effects_disabled tmp 1

execute if score #11_2 nether_workshop matches 1 unless score #nether_workshop_effects_disabled tmp matches 1 if score #8_1 nether_workshop matches 1 unless score #trial_active trial matches 1 if score #quartz material matches ..7499 run return 60
execute if score #11_2 nether_workshop matches 1 unless score #nether_workshop_effects_disabled tmp matches 1 if score #8_1 nether_workshop matches 1 if score #creation_restored trial matches 1 if score #quartz material matches ..7499 run return 60
execute if score #11_2 nether_workshop matches 1 unless score #nether_workshop_effects_disabled tmp matches 1 if score #quartz material matches ..5049 run return 60
execute if score #11_2 nether_workshop matches 1 unless score #nether_workshop_effects_disabled tmp matches 1 if score #quartz material matches 5050..5149 run return 90
execute if score #11_2 nether_workshop matches 1 unless score #nether_workshop_effects_disabled tmp matches 1 if score #quartz material matches 5150..5399 run return 150
execute if score #11_2 nether_workshop matches 1 unless score #nether_workshop_effects_disabled tmp matches 1 if score #quartz material matches 5400..5999 run return 250
execute if score #11_2 nether_workshop matches 1 unless score #nether_workshop_effects_disabled tmp matches 1 if score #quartz material matches 6000..7499 run return 450
execute if score #11_2 nether_workshop matches 1 unless score #nether_workshop_effects_disabled tmp matches 1 if score #quartz material matches 7500..9999 run return 800
execute if score #11_2 nether_workshop matches 1 unless score #nether_workshop_effects_disabled tmp matches 1 run return 1200

execute if score #8_1 nether_workshop matches 1 unless score #trial_active trial matches 1 if score #quartz material matches ..2499 run return 60
execute if score #8_1 nether_workshop matches 1 if score #creation_restored trial matches 1 if score #quartz material matches ..2499 run return 60
execute if score #quartz material matches ..49 run return 60
execute if score #quartz material matches 50..149 run return 90
execute if score #quartz material matches 150..399 run return 150
execute if score #quartz material matches 400..999 run return 250
execute if score #quartz material matches 1000..2499 run return 450
execute if score #quartz material matches 2500..4999 run return 800

return 1200
