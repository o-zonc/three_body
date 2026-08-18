scoreboard objectives modify material_display numberformat blank

scoreboard players set wood material_display 1400
execute if score #stone unlock matches 1 run scoreboard players set stone material_display 1300
execute if score #coal unlock matches 1 run scoreboard players set coal material_display 1200
execute if score #copper unlock matches 1 run scoreboard players set copper material_display 1100
execute if score #iron unlock matches 1 run scoreboard players set iron material_display 1000
execute if score #gold unlock matches 1 run scoreboard players set gold material_display 900
execute if score #diamond unlock matches 1 run scoreboard players set diamond material_display 800
execute if score #emerald unlock matches 1 run scoreboard players set emerald material_display 700
execute if score #lapis unlock matches 1 run scoreboard players set lapis material_display 600
execute if score #heat unlock matches 1 run scoreboard players set heat material_display 500
execute if score #cold unlock matches 1 run scoreboard players set cold material_display 400
execute if score #information unlock matches 1 run scoreboard players set information material_display 300
execute if score #time unlock matches 1 run scoreboard players set time material_display 200
execute if score #world_eye unlock matches 1 run scoreboard players set world_eye material_display 100

scoreboard players display name wood material_display {"text":"나무","color":"yellow","shadow_color":-16777216}
execute if score #stone unlock matches 1 run scoreboard players display name stone material_display {"text":"돌","color":"gray","shadow_color":-16777216}
execute if score #coal unlock matches 1 run scoreboard players display name coal material_display {"text":"석탄","color":"dark_gray","shadow_color":-16777216}
execute if score #copper unlock matches 1 run scoreboard players display name copper material_display {"text":"구리","color":"gold","shadow_color":-16777216}
execute if score #iron unlock matches 1 run scoreboard players display name iron material_display {"text":"철","color":"white","shadow_color":-16777216}
execute if score #gold unlock matches 1 run scoreboard players display name gold material_display {"text":"금","color":"gold","shadow_color":-7710208}
execute if score #diamond unlock matches 1 run scoreboard players display name diamond material_display {"text":"다이아몬드","color":"aqua","shadow_color":-16777216}
execute if score #emerald unlock matches 1 run scoreboard players display name emerald material_display {"text":"에메랄드","color":"green","shadow_color":-16777216}
execute if score #lapis unlock matches 1 run scoreboard players display name lapis material_display {"text":"청금석","color":"blue","shadow_color":-16777216}
execute if score #heat unlock matches 1 run scoreboard players display name heat material_display {"text":"열기","color":"red","shadow_color":-16777216}
execute if score #cold unlock matches 1 run scoreboard players display name cold material_display {"text":"냉기","color":"aqua","shadow_color":-16777216}
execute if score #information unlock matches 1 run scoreboard players display name information material_display {"text":"정보","color":"light_purple","shadow_color":-16777216}
execute if score #time unlock matches 1 run scoreboard players display name time material_display {"text":"시간","color":"dark_aqua","shadow_color":-16777216}
execute if score #world_eye unlock matches 1 run scoreboard players display name world_eye material_display {"text":"세계의 눈","color":"dark_purple","shadow_color":-16777216}

scoreboard players display numberformat wood material_display fixed {"score":{"name":"#wood","objective":"material"},"color":"yellow","shadow_color":-16777216}
execute if score #stone unlock matches 1 run scoreboard players display numberformat stone material_display fixed {"score":{"name":"#stone","objective":"material"},"color":"gray","shadow_color":-16777216}
execute if score #coal unlock matches 1 run scoreboard players display numberformat coal material_display fixed {"score":{"name":"#coal","objective":"material"},"color":"dark_gray","shadow_color":-16777216}
execute if score #copper unlock matches 1 run scoreboard players display numberformat copper material_display fixed {"score":{"name":"#copper","objective":"material"},"color":"gold","shadow_color":-16777216}
execute if score #iron unlock matches 1 run scoreboard players display numberformat iron material_display fixed {"score":{"name":"#iron","objective":"material"},"color":"white","shadow_color":-16777216}
execute if score #gold unlock matches 1 run scoreboard players display numberformat gold material_display fixed {"score":{"name":"#gold","objective":"material"},"color":"gold","shadow_color":-7710208}
execute if score #diamond unlock matches 1 run scoreboard players display numberformat diamond material_display fixed {"score":{"name":"#diamond","objective":"material"},"color":"aqua","shadow_color":-16777216}
execute if score #emerald unlock matches 1 run scoreboard players display numberformat emerald material_display fixed {"score":{"name":"#emerald","objective":"material"},"color":"green","shadow_color":-16777216}
execute if score #lapis unlock matches 1 run scoreboard players display numberformat lapis material_display fixed {"score":{"name":"#lapis","objective":"material"},"color":"blue","shadow_color":-16777216}
execute if score #heat unlock matches 1 run scoreboard players display numberformat heat material_display fixed {"score":{"name":"#heat","objective":"material"},"color":"red","shadow_color":-16777216}
execute if score #cold unlock matches 1 run scoreboard players display numberformat cold material_display fixed {"score":{"name":"#cold","objective":"material"},"color":"aqua","shadow_color":-16777216}
execute if score #information unlock matches 1 run scoreboard players display numberformat information material_display fixed {"score":{"name":"#information","objective":"material"},"color":"light_purple","shadow_color":-16777216}
execute if score #time unlock matches 1 run scoreboard players display numberformat time material_display fixed {"score":{"name":"#time","objective":"material"},"color":"dark_aqua","shadow_color":-16777216}
execute if score #world_eye unlock matches 1 run scoreboard players display numberformat world_eye material_display fixed {"score":{"name":"#world_eye","objective":"material"},"color":"dark_purple","shadow_color":-16777216}
