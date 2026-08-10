# ============================================================
# THREE BODY - FULL RESET
# ============================================================

# ------------------------------------------------------------
# 1. 예약된 함수 제거
# ------------------------------------------------------------

schedule clear three_body:common/next

schedule clear three_body:frozen/weather

schedule clear story:intro/00_init
schedule clear story:intro/01_quote1
schedule clear story:intro/02_scroll_start
schedule clear story:intro/03_scroll_tick
schedule clear story:intro/98_end
schedule clear story:intro/99_release_player


# ------------------------------------------------------------
# 2. 플레이어 상태 초기화
# ------------------------------------------------------------

effect clear @a
clear @a

gamemode adventure @a


# ------------------------------------------------------------
# 3. 플레이어를 오버월드로 복귀
# ------------------------------------------------------------

execute in minecraft:overworld run tp @a 0 100 0


# ------------------------------------------------------------
# 4. 게임 진행 scoreboard 초기화
# ------------------------------------------------------------

scoreboard players set #GLOBAL current_dim 0

scoreboard players set #GLOBAL visited_overworld 0
scoreboard players set #GLOBAL visited_dried 0
scoreboard players set #GLOBAL visited_frozen 0
scoreboard players set #GLOBAL visited_polar 0

scoreboard players set #GLOBAL state_overworld 0
scoreboard players set #GLOBAL state_dried 0
scoreboard players set #GLOBAL state_frozen 0

scoreboard players set #GLOBAL n_civil 0


# ------------------------------------------------------------
# 5. 각종 타이머 초기화
# ------------------------------------------------------------

scoreboard players set #GLOBAL timer_overworld 0
scoreboard players set #GLOBAL timer_dried 0
scoreboard players set #GLOBAL timer_frozen 0
scoreboard players set #GLOBAL timer_sec 0

scoreboard players set #t story 0


# ------------------------------------------------------------
# 6. 방문/진행 관련 값 초기화
# ------------------------------------------------------------

scoreboard players set #GLOBAL first_dried 0
scoreboard players set #GLOBAL first_frozen 0


# ------------------------------------------------------------
# 7. 시간 배율 복구
# ------------------------------------------------------------

execute in minecraft:overworld run time rate 1
execute in three_body:dried run time rate 1
execute in three_body:frozen run time rate 1
execute in three_body:polarnight run time rate 1
execute in three_body:dawn run time rate 1


# ------------------------------------------------------------
# 8. 날씨 초기화
# ------------------------------------------------------------

execute in minecraft:overworld run weather clear
execute in three_body:dried run weather clear
execute in three_body:frozen run weather clear
execute in three_body:polarnight run weather clear
execute in three_body:dawn run weather clear


# ------------------------------------------------------------
# 9. 기존 인트로/게임용 엔티티 제거
# ------------------------------------------------------------

kill @e[type=marker,tag=next_dim_selector]

kill @e[type=marker,tag=current]

kill @e[tag=story_intro]

kill @e[tag=fall_anchor]

kill @e[type=item_display,tag=story_intro]

kill @e[type=text_display,tag=story_intro]


# ------------------------------------------------------------
# 10. 인트로 시작
# ------------------------------------------------------------

function story:intro/00_init