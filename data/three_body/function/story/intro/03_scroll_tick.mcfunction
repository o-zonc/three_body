# ============================================================
#  인트로 3단계 - 타이틀 롤 엔진
#  벤치마킹한 맵의 크레딧 스크롤과 동일한 원리:
#  "매 틱, 떠 있는 모든 텍스트를 살짝 위로 밀어올린다"
# ============================================================

# 스펙테이터 시점 고정 유지 (풀리는 것 방지)
# @n은 잘못된 선택자입니다. @e[tag=...,limit=1]을 사용해야 카메라에 시점이 정상적으로 고정됩니다.
execute as @a run spectate @e[tag=story_camera,limit=1]

# 현재 떠 있는 모든 텍스트 줄을 위로 살짝 이동 → 스크롤 효과
execute as @e[tag=story_text] at @s run tp @s ~ ~0.03 ~

scoreboard players add #t intro 1

# ---- 문단 1 ----
execute if score #t intro matches 1 as @e[tag=story_camera,limit=1] at @s run summon text_display ~ ~-2 ~9 {Tags:["story_text","story_intro"],Rotation:[180,0],background:0,text:{text:"어느 날, 우주로 쏘아 올린 전파에",color:"white"}}
execute if score #t intro matches 46 as @e[tag=story_camera,limit=1] at @s run summon text_display ~ ~-2 ~9 {Tags:["story_text","story_intro"],Rotation:[180,0],background:0,text:{text:"외계 문명이 답신해 온다.",color:"white"}}
execute if score #t intro matches 91 as @e[tag=story_camera,limit=1] at @s run summon text_display ~ ~-2 ~9 {Tags:["story_text","story_intro"],Rotation:[180,0],background:0,text:{text:"이 경고는 외계 문명의 평화주의자가",color:"white"}}
execute if score #t intro matches 136 as @e[tag=story_camera,limit=1] at @s run summon text_display ~ ~-2 ~9 {Tags:["story_text","story_intro"],Rotation:[180,0],background:0,text:{text:"보낸 것이었다.",color:"white"}}

# ---- 인용구 (강조: 크고 노란색) ----
execute if score #t intro matches 200 as @e[tag=story_camera,limit=1] at @s run summon text_display ~ ~-2 ~9 {Tags:["story_text","story_intro"],Rotation:[180,0],background:0,transformation:[1.6f,0f,0f,0f, 0f,1.6f,0f,0f, 0f,0f,1f,0f, 0f,0f,0f,1f],text:{text:"\"와서 이 세계를 점령하라.\"",color:"yellow",italic:true}}

# ---- 문단 2 ----
execute if score #t intro matches 260 as @e[tag=story_camera,limit=1] at @s run summon text_display ~ ~-2 ~9 {Tags:["story_text","story_intro"],Rotation:[180,0],background:0,text:{text:"지금의 지구에 환멸을 느낀 걸까,",color:"white"}}
execute if score #t intro matches 305 as @e[tag=story_camera,limit=1] at @s run summon text_display ~ ~-2 ~9 {Tags:["story_text","story_intro"],Rotation:[180,0],background:0,text:{text:"아니면 외계 존재를 도발하려던 걸까.",color:"white"}}
execute if score #t intro matches 350 as @e[tag=story_camera,limit=1] at @s run summon text_display ~ ~-2 ~9 {Tags:["story_text","story_intro"],Rotation:[180,0],background:0,text:{text:"외계 문명의 답신에",color:"white"}}
execute if score #t intro matches 395 as @e[tag=story_camera,limit=1] at @s run summon text_display ~ ~-2 ~9 {Tags:["story_text","story_intro"],Rotation:[180,0],background:0,text:{text:"어떤 과학자가 이렇게 대답했다.",color:"white"}}

# ---- 문단 3 ----
execute if score #t intro matches 450 as @e[tag=story_camera,limit=1] at @s run summon text_display ~ ~-2 ~9 {Tags:["story_text","story_intro"],Rotation:[180,0],background:0,text:{text:"시간이 흘러 전 세계의 저명한 물리학자들이",color:"white"}}
execute if score #t intro matches 495 as @e[tag=story_camera,limit=1] at @s run summon text_display ~ ~-2 ~9 {Tags:["story_text","story_intro"],Rotation:[180,0],background:0,text:{text:"연이어 실종되는 사건이 발생한다.",color:"white"}}
execute if score #t intro matches 540 as @e[tag=story_camera,limit=1] at @s run summon text_display ~ ~-2 ~9 {Tags:["story_text","story_intro"],Rotation:[180,0],background:0,text:{text:"그들은 어디로 사라진 것일까.",color:"white"}}
execute if score #t intro matches 585 as @e[tag=story_camera,limit=1] at @s run summon text_display ~ ~-2 ~9 {Tags:["story_text","story_intro"],Rotation:[180,0],background:0,text:{text:"다만 한 가지 단서는 그들이 마지막으로",color:"white"}}
execute if score #t intro matches 630 as @e[tag=story_camera,limit=1] at @s run summon text_display ~ ~-2 ~9 {Tags:["story_text","story_intro"],Rotation:[180,0],background:0,text:{text:"플레이했던 게임이 같다는 것.",color:"white"}}

# ---- 문단 4 ----
execute if score #t intro matches 690 as @e[tag=story_camera,limit=1] at @s run summon text_display ~ ~-2 ~9 {Tags:["story_text","story_intro"],Rotation:[180,0],background:0,text:{text:"우리에게 답신해 온 삼체 세계의 문명이 겪어온",color:"white"}}
execute if score #t intro matches 735 as @e[tag=story_camera,limit=1] at @s run summon text_display ~ ~-2 ~9 {Tags:["story_text","story_intro"],Rotation:[180,0],background:0,text:{text:"가혹한 현실을 보여주는 시뮬레이션,",color:"white"}}
execute if score #t intro matches 780 as @e[tag=story_camera,limit=1] at @s run summon text_display ~ ~-2 ~9 {Tags:["story_text","story_intro"],Rotation:[180,0],background:0,transformation:[1.6f,0f,0f,0f, 0f,1.6f,0f,0f, 0f,0f,1f,0f, 0f,0f,0f,1f], text:{text:"\"삼체\"",color:"dark_red"}}
execute if score #t intro matches 825 as @e[tag=story_camera,limit=1] at @s run summon text_display ~ ~-2 ~9 {Tags:["story_text","story_intro"],Rotation:[180,0],background:0,text:{text:"도대체 어떤 경로로 이 게임이 배포되었는지는",color:"white"}}
execute if score #t intro matches 870 as @e[tag=story_camera,limit=1] at @s run summon text_display ~ ~-2 ~9 {Tags:["story_text","story_intro"],Rotation:[180,0],background:0,text:{text:"알 수 없다.",color:"white"}}
execute if score #t intro matches 915 as @e[tag=story_camera,limit=1] at @s run summon text_display ~ ~-2 ~9 {Tags:["story_text","story_intro"],Rotation:[180,0],background:0,text:{text:"다만 한 가지 확실한 것은",color:"white"}}
execute if score #t intro matches 960 as @e[tag=story_camera,limit=1] at @s run summon text_display ~ ~-2 ~9 {Tags:["story_text","story_intro"],Rotation:[180,0],background:0,text:{text:"사라진 과학자들은 이 게임을 플레이하고 있었다는 사실뿐.",color:"white"}}

# ---- 마무리 질문 (강조: 크게) ----
execute if score #t intro matches 1030 as @e[tag=story_camera,limit=1] at @s run summon text_display ~ ~-2 ~9 {Tags:["story_text","story_intro"],Rotation:[180,0],background:0,transformation:[1.6f,0f,0f,0f, 0f,1.6f,0f,0f, 0f,0f,1f,0f, 0f,0f,0f,1f],text:{text:"당신은 이 게임에서",color:"gold",bold:true}}
execute if score #t intro matches 1075 as @e[tag=story_camera,limit=1] at @s run summon text_display ~ ~-2 ~9 {Tags:["story_text","story_intro"],Rotation:[180,0],background:0,transformation:[1.6f,0f,0f,0f, 0f,1.6f,0f,0f, 0f,0f,1f,0f, 0f,0f,0f,1f],text:{text:"살아남을 수 있을까요?",color:"gold",bold:true}}

# 스크롤 계속 진행
execute if score #t intro matches ..1200 run schedule function three_body:story/intro/03_scroll_tick 1t

# 스크롤 종료 → 마무리로
execute if score #t intro matches 1200.. run function three_body:story/intro/98_end
