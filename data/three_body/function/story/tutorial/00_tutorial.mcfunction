function three_body:util/blank
tellraw @a ["",{"text":"[튜토리얼]","color":"blue","bold":true,"click_event": {"action": "run_command", command: "/trigger tutorial set 1"},"hover_event":{"action":"show_text","value":[{"text":"클릭하여 인트로를 건너뜁니다."}]}}]
