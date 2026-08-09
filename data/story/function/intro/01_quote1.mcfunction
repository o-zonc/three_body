# ============================================================
#  인트로 1단계 - 첫 번째 인용구 (경고)
# ============================================================

title @a title {"text":""}
title @a times 10 70 30
title @a subtitle [{"text":"\"대답하지 마라. 대답하면 너희 세계는 점령당할 것이다.\"","italic":true,"color":"gray"}]

function three_body:util/blank
tellraw @a ["",{"text":"[인트로 건너뛰기]","color":"gold","bold":true,"click_event": {"action": "run_command", command: "/function story:intro/skip"},"hover_event":{"action":"show_text","value":[{"text":"클릭하여 인트로를 건너뜁니다."}]}}]

schedule function story:intro/02_scroll_start 120t
