scoreboard objectives modify material_display numberformat blank
scoreboard players set wood material_display 1200
execute if score #stone unlock matches 1 run scoreboard players set stone material_display 1100
execute if score #coal unlock matches 1 run scoreboard players set coal material_display 1000
execute if score #copper unlock matches 1 run scoreboard players set copper material_display 900
execute if score #iron unlock matches 1 run scoreboard players set iron material_display 800
execute if score #gold unlock matches 1 run scoreboard players set gold material_display 700
execute if score #emerald unlock matches 1 run scoreboard players set emerald material_display 600
execute if score #lapis unlock matches 1 run scoreboard players set lapis material_display 500
execute if score #diamond unlock matches 1 run scoreboard players set diamond material_display 400
execute if score #heat unlock matches 1 run scoreboard players set heat material_display 300
execute if score #cold unlock matches 1 run scoreboard players set cold material_display 200
execute if score #info unlock matches 1 run scoreboard players set info material_display 100
execute if score #time unlock matches 1 run scoreboard players set time material_display 0

scoreboard players display name wood material_display {"text":"나무 ","extra":[{"score":{"name":"#wood","objective":"material"}}],"color":"yellow", shadow_color:-16777216}
execute if score #stone unlock matches 1 run scoreboard players display name stone material_display {"text":"돌   ","extra":[{"score":{"name":"#stone","objective":"material"}}],"color":"gray",shadow_color:-16777216}