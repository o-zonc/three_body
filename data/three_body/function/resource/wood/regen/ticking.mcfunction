# wood regen skeleton
# ==================================================
# Wood regeneration ticking
# ==================================================

# 생산 시스템이 비활성화되어 있으면 종료
execute if score #disable_wood_production var matches 1 run return 0

# 해금되지 않았다면 생성 위치를 비운다.
execute unless score #wood unlock matches 1 run return 0

# TODO:
# wood 생성 지점에 자원이 존재하는지 검사한다.

# TODO:
# 자원이 존재한다면 remain 값을 초기화한다.

# TODO:
# 생성 지점이 비어 있고 재생성 조건을 만족하면
# break.mcfunction을 호출한다.