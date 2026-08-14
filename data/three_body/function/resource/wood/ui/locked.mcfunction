# ==================================================
# Wood locked UI
# ==================================================

tellraw @s [
    {"text":"[ 나무 ] ","color":"green"},
    {"text":"🔒 잠김","color":"red"}
]

# TODO:
# 해금 비용 표시

# TODO:
# 클릭 시 unlock_trigger 실행
#
# 예:
# click_event:{
#     action:"run_command",
#     command:"/trigger unlock_trigger set 1001"
# }