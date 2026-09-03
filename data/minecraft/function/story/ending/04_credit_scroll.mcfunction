# 엔딩 크레딧 - 모든 문구가 화면 위로 사라질 때까지 스크롤

execute as @a[tag=ending_active] run spectate @e[tag=ending_camera,limit=1]
execute as @e[tag=ending_credit_text] at @s run tp @s ~ ~0.04 ~
scoreboard players add #ending_credit_tick var 1

execute if score #ending_credit_tick var matches 2 as @e[tag=ending_camera,limit=1] at @s run summon text_display ~ ~-3 ~9 {\
Tags:["ending_credit_text","story_ending"],brightness:{sky:15,block:15},Rotation:[180,0],background:0,\
transformation:[3.0f,0f,0f,0f, 0f,3.0f,0f,0f, 0f,0f,1f,0f, 0f,0f,0f,1f],\
text:{text:"THE END",color:"white",bold:true}}

execute if score #ending_credit_tick var matches 300 as @e[tag=ending_camera,limit=1] at @s run summon text_display ~ ~-3 ~9 {\
Tags:["ending_credit_text","story_ending"],brightness:{sky:15,block:15},Rotation:[180,0],background:0,\
transformation:[2.0f,0f,0f,0f, 0f,2.0f,0f,0f, 0f,0f,1f,0f, 0f,0f,0f,1f],\
text:{text:"삼체(三體)",color:"#F971BE","shadow_color":[0.44, 0.8, 0.98, 1.0]}}

execute if score #ending_credit_tick var matches 300 as @e[tag=ending_camera,limit=1] at @s run summon text_display ~ ~-3.5 ~9 {\
Tags:["ending_credit_text","story_ending"],brightness:{sky:15,block:15},Rotation:[180,0],background:0,\
transformation:[1.2f,0f,0f,0f, 0f,1.2f,0f,0f, 0f,0f,1f,0f, 0f,0f,0f,1f],\
text:{text:"3 Body Problem",color:"gray"}}

execute if score #ending_credit_tick var matches 600 as @e[tag=ending_camera,limit=1] at @s run summon text_display ~ ~-3 ~9 {\
Tags:["ending_credit_text","story_ending"],brightness:{sky:15,block:15},Rotation:[180,0],background:0,\
transformation:[1.5f,0f,0f,0f, 0f,1.5f,0f,0f, 0f,0f,1f,0f, 0f,0f,0f,1f],\
text:{text:"기획 · 제작",color:"gray"}}

execute if score #ending_credit_tick var matches 623 as @e[tag=ending_camera,limit=1] at @s run summon text_display ~ ~-3 ~9 {\
Tags:["ending_credit_text","story_ending"],brightness:{sky:15,block:15},Rotation:[180,0],background:0,\
transformation:[1.0f,0f,0f,0f, 0f,1.0f,0f,0f, 0f,0f,1f,0f, 0f,0f,0f,1f],\
text:{text:"곰돌이프휴",color:"white"}}

execute if score #ending_credit_tick var matches 848 as @e[tag=ending_camera,limit=1] at @s run summon text_display ~ ~-3 ~9 {\
Tags:["ending_credit_text","story_ending"],brightness:{sky:15,block:15},Rotation:[180,0],background:0,\
transformation:[1.5f,0f,0f,0f, 0f,1.5f,0f,0f, 0f,0f,1f,0f, 0f,0f,0f,1f],\
text:{text:"원작",color:"gray"}}

execute if score #ending_credit_tick var matches 870 as @e[tag=ending_camera,limit=1] at @s run summon text_display ~ ~-3 ~9 {\
Tags:["ending_credit_text","story_ending"],brightness:{sky:15,block:15},Rotation:[180,0],background:0,\
transformation:[1.0f,0f,0f,0f, 0f,1.0f,0f,0f, 0f,0f,1f,0f, 0f,0f,0f,1f],\
text:{text:"류츠신,《삼체》",color:"white"}}

execute if score #ending_credit_tick var matches 1095 as @e[tag=ending_camera,limit=1] at @s run summon text_display ~ ~-3 ~9 {\
Tags:["ending_credit_text","story_ending"],brightness:{sky:15,block:15},Rotation:[180,0],background:0,\
transformation:[1.5f,0f,0f,0f, 0f,1.5f,0f,0f, 0f,0f,1f,0f, 0f,0f,0f,1f],\
text:{text:"도움주신 분들",color:"gray"}}

execute if score #ending_credit_tick var matches 1140 as @e[tag=ending_camera,limit=1] at @s run summon text_display ~ ~-3 ~9 {\
Tags:["ending_credit_text","story_ending"],brightness:{sky:15,block:15},Rotation:[180,0],background:0,\
transformation:[1.2f,0f,0f,0f, 0f,1.2f,0f,0f, 0f,0f,1f,0f, 0f,0f,0f,1f],\
text:{text:"자원 시스템 및 인터렉션 구현",color:"gray"}}

execute if score #ending_credit_tick var matches 1163 as @e[tag=ending_camera,limit=1] at @s run summon text_display ~ ~-3 ~9 {\
Tags:["ending_credit_text","story_ending"],brightness:{sky:15,block:15},Rotation:[180,0],background:0,\
transformation:[1.0f,0f,0f,0f, 0f,1.0f,0f,0f, 0f,0f,1f,0f, 0f,0f,0f,1f],\
text:{text:"오리교수 님",color:"white"}}

execute if score #ending_credit_tick var matches 1313 as @e[tag=ending_camera,limit=1] at @s run summon text_display ~ ~-3 ~9 {\
Tags:["ending_credit_text","story_ending"],brightness:{sky:15,block:15},Rotation:[180,0],background:0,\
transformation:[1.2f,0f,0f,0f, 0f,1.2f,0f,0f, 0f,0f,1f,0f, 0f,0f,0f,1f],\
text:{text:"의견 주신 분",color:"gray"}}

execute if score #ending_credit_tick var matches 1335 as @e[tag=ending_camera,limit=1] at @s run summon text_display ~ ~-3 ~9 {\
Tags:["ending_credit_text","story_ending"],brightness:{sky:15,block:15},Rotation:[180,0],background:0,\
transformation:[1.0f,0f,0f,0f, 0f,1.0f,0f,0f, 0f,0f,1f,0f, 0f,0f,0f,1f],\
text:{text:"chickenyummy 님",color:"white"}}

execute if score #ending_credit_tick var matches 1350 as @e[tag=ending_camera,limit=1] at @s run summon text_display ~ ~-3 ~9 {\
Tags:["ending_credit_text","story_ending"],brightness:{sky:15,block:15},Rotation:[180,0],background:0,\
transformation:[1.0f,0f,0f,0f, 0f,1.0f,0f,0f, 0f,0f,1f,0f, 0f,0f,0f,1f],\
text:{text:"디노니 님",color:"white"}}

execute if score #ending_credit_tick var matches 1365 as @e[tag=ending_camera,limit=1] at @s run summon text_display ~ ~-3 ~9 {\
Tags:["ending_credit_text","story_ending"],brightness:{sky:15,block:15},Rotation:[180,0],background:0,\
transformation:[1.0f,0f,0f,0f, 0f,1.0f,0f,0f, 0f,0f,1f,0f, 0f,0f,0f,1f],\
text:{text:"만천화우 님",color:"white"}}

execute if score #ending_credit_tick var matches 1755 as @e[tag=ending_camera,limit=1] at @s run summon text_display ~ ~-3 ~9 {\
Tags:["ending_credit_text","story_ending"],brightness:{sky:15,block:15},Rotation:[180,0],background:0,\
transformation:[1.5f,0f,0f,0f, 0f,1.5f,0f,0f, 0f,0f,1f,0f, 0f,0f,0f,1f],\
text:{text:"플레이어",color:"gray"}}

execute if score #ending_credit_tick var matches 1778 as @e[tag=ending_camera,limit=1] at @s run summon text_display ~ ~-3 ~9 {\
Tags:["ending_credit_text","story_ending"],brightness:{sky:15,block:15},Rotation:[180,0],background:0,\
transformation:[1.0f,0f,0f,0f, 0f,1.0f,0f,0f, 0f,0f,1f,0f, 0f,0f,0f,1f],\
text:{selector:"@a[tag=ending_seen]",color:"white"}}

execute if score #ending_credit_tick var matches 1925 as @e[tag=ending_camera,limit=1] at @s run summon text_display ~ ~-3 ~9 {\
Tags:["ending_credit_text","story_ending"],brightness:{sky:15,block:15},Rotation:[180,0],background:0,\
transformation:[0.7f,0f,0f,0f, 0f,0.7f,0f,0f, 0f,0f,1f,0f, 0f,0f,0f,1f],\
text:{text:"이 이야기는 아직 끝나지 않았습니다.",color:"dark_gray",italic:true}}

execute if score #ending_credit_tick var matches ..2199 run schedule function story/ending/04_credit_scroll 1t
execute if score #ending_credit_tick var matches 2200.. run schedule function story/ending/05_return 1t
