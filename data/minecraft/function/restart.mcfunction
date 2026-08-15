# ============================================================
# THREE BODY - FULL RESET
# ============================================================

# ------------------------------------------------------------
# 1. 예약된 함수 제거
# ------------------------------------------------------------

schedule clear common/next

schedule clear frozen/weather

schedule clear story/intro/00_init
schedule clear story/intro/01_quote1
schedule clear story/intro/02_scroll_start
schedule clear story/intro/03_scroll_tick
schedule clear story/intro/98_end
schedule clear story/intro/99_release_player


# ------------------------------------------------------------
# 2. 플레이어 상태 초기화
# ------------------------------------------------------------

effect clear @a
clear @a

gamemode adventure @a


# ------------------------------------------------------------
# 3. 플레이어를 오버월드로 복귀
# ------------------------------------------------------------

execute in overworld run tp @a 0 100 0


# ------------------------------------------------------------
# 4. 스코어보드 초기화
# ------------------------------------------------------------

function reset_state


# ------------------------------------------------------------
# 5. 시간 배율 복구
# ------------------------------------------------------------

execute in overworld run time rate 1
execute in dried run time rate 1
execute in frozen run time rate 1
execute in polarnight run time rate 1
execute in dawn run time rate 1


# ------------------------------------------------------------
# 6. 날씨 초기화
# ------------------------------------------------------------

execute in overworld run weather clear
execute in dried run weather clear
execute in frozen run weather clear
execute in polarnight run weather clear
execute in dawn run weather clear


# ------------------------------------------------------------
# 7. 기존 인트로/게임용 엔티티 제거
# ------------------------------------------------------------

kill @e[type=marker,tag=next_dim_selector]

kill @e[type=marker,tag=current]

kill @e[tag=story_intro]

kill @e[tag=fall_anchor]

kill @e[type=item_display,tag=story_intro]

kill @e[type=text_display,tag=story_intro]


# ------------------------------------------------------------
# 8. 도전과제 회수 및 레벨 초기화
# ------------------------------------------------------------

advancement revoke @a everything

xp set @a 0 levels
xp set @a 0 points


# ------------------------------------------------------------
# 9. 시설물 철거
# ------------------------------------------------------------

function common/structure/observatory/off
function common/structure/beacon/off


# ------------------------------------------------------------
# 99. 인트로 시작
# ------------------------------------------------------------

function story/intro/00_init