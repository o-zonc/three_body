# Resource sidebar - synchronize unlocked resources and amounts

execute if score #wood unlock matches 1 run scoreboard players operation "나무" material_display = #wood material
execute unless score #wood unlock matches 1 run scoreboard players reset "나무" material_display

execute if score #stone unlock matches 1 run scoreboard players operation "돌" material_display = #stone material
execute unless score #stone unlock matches 1 run scoreboard players reset "돌" material_display

execute if score #coal unlock matches 1 run scoreboard players operation "석탄" material_display = #coal material
execute unless score #coal unlock matches 1 run scoreboard players reset "석탄" material_display

execute if score #copper unlock matches 1 run scoreboard players operation "구리" material_display = #copper material
execute unless score #copper unlock matches 1 run scoreboard players reset "구리" material_display

execute if score #iron unlock matches 1 run scoreboard players operation "철" material_display = #iron material
execute unless score #iron unlock matches 1 run scoreboard players reset "철" material_display

execute if score #gold unlock matches 1 run scoreboard players operation "금" material_display = #gold material
execute unless score #gold unlock matches 1 run scoreboard players reset "금" material_display

execute if score #diamond unlock matches 1 run scoreboard players operation "다이아몬드" material_display = #diamond material
execute unless score #diamond unlock matches 1 run scoreboard players reset "다이아몬드" material_display

execute if score #emerald unlock matches 1 run scoreboard players operation "에메랄드" material_display = #emerald material
execute unless score #emerald unlock matches 1 run scoreboard players reset "에메랄드" material_display

execute if score #lapis unlock matches 1 run scoreboard players operation "청금석" material_display = #lapis material
execute unless score #lapis unlock matches 1 run scoreboard players reset "청금석" material_display

execute if score #heat unlock matches 1 run scoreboard players operation "열기" material_display = #heat material
execute unless score #heat unlock matches 1 run scoreboard players reset "열기" material_display

execute if score #cold unlock matches 1 run scoreboard players operation "냉기" material_display = #cold material
execute unless score #cold unlock matches 1 run scoreboard players reset "냉기" material_display

execute if score #information unlock matches 1 run scoreboard players operation "정보" material_display = #information material
execute unless score #information unlock matches 1 run scoreboard players reset "정보" material_display

execute if score #time unlock matches 1 run scoreboard players operation "시간" material_display = #time material
execute unless score #time unlock matches 1 run scoreboard players reset "시간" material_display

execute if score #world_eye unlock matches 1 run scoreboard players operation "세계의_눈" material_display = #world_eye material
execute unless score #world_eye unlock matches 1 run scoreboard players reset "세계의_눈" material_display
