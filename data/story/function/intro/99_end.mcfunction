# ============================================================
#  인트로 4단계 - 마무리
# ============================================================

title @a clear
title @a times 10 20 40

# 인트로용 엔티티(카메라, 배경판, 텍스트) 전부 정리
kill @e[tag=story_intro]

# 플레이어 조작 복구
execute as @a run spectate
gamemode adventure @a

# TODO: 여기에 실제 게임 시작 로직(스폰 위치 이동 등)을 연결하세요.
effect give @a slow_falling 20 2 true
advancement grant @a only three_body:overworld/root
