# 3. 초기값 설정 (시작은 모두 항성기, 5분 뒤 첫 판정)
scoreboard players set #GLOBAL state_frozen 0
scoreboard players set #GLOBAL timer_frozen 6000
scoreboard players set #GLOBAL state_dried 0
scoreboard players set #GLOBAL timer_dried 6000
scoreboard players set #GLOBAL state_overworld 0
scoreboard players set #GLOBAL timer_overworld 6000
scoreboard players set #GLOBAL state_polar 0
scoreboard players set #GLOBAL state_dawn 0
scoreboard players set #20_CONSTANT timer_sec 20

# 4. 보스바 설정
bossbar set bossbar_frozen color blue
bossbar set bossbar_frozen style notched_6
bossbar set bossbar_frozen visible false
bossbar set bossbar_frozen max 6000
bossbar set bossbar_dried color yellow
bossbar set bossbar_dried style notched_10
bossbar set bossbar_dried visible false
bossbar set bossbar_dried max 6000
bossbar set bossbar_overworld color green
bossbar set bossbar_overworld style progress
bossbar set bossbar_overworld visible false
bossbar set bossbar_overworld max 6000

scoreboard players set #GLOBAL user_disaster 0

# 5. 차원 방문 스코어보드 초기화
scoreboard players set #GLOBAL visited_dried 0
scoreboard players set #GLOBAL visited_frozen 0
scoreboard players set #GLOBAL visited_overworld 0
scoreboard players set #GLOBAL visited_polar 0
scoreboard players set #GLOBAL first_frozen 0
scoreboard players set #GLOBAL first_dried 0
scoreboard players set #GLOBAL n_civil 1
scoreboard players set #GLOBAL current_dim 0

# 6. 문명 전환 시스템 관리 스코어보드 초기화
scoreboard players set #GLOBAL era_paused 1
scoreboard players set #disaster_running run 0

# 7. 스토리 관리 스코어보드 초기화
scoreboard players set #done intro 0
scoreboard players set #t intro 0
scoreboard players set #overworld civilization_age 0
scoreboard players set #level alchemy_workshop 0
scoreboard players set #alchemy_workshop unlock 0

# 8. 자원 스코어보드 초기화
scoreboard players set * material 0
scoreboard players set * upgrade 0
scoreboard players set * unlock 0

# 생산 업그레이드 레벨을 명시적으로 초기화
scoreboard players set #wood_regen_lvl upgrade 0
scoreboard players set #stone_regen_lvl upgrade 0
scoreboard players set #coal_regen_lvl upgrade 0
scoreboard players set #copper_regen_lvl upgrade 0
scoreboard players set #iron_regen_lvl upgrade 0
scoreboard players set #gold_regen_lvl upgrade 0
scoreboard players set #diamond_regen_lvl upgrade 0
scoreboard players set #emerald_regen_lvl upgrade 0
scoreboard players set #lapis_regen_lvl upgrade 0
scoreboard players set #drill_speed_lvl upgrade 0
scoreboard players set #drill_limit_lvl upgrade 0
scoreboard players set #tool upgrade 0

# 상점 및 공방에서 관리하는 별도 업그레이드 레벨 초기화
scoreboard players set * nether_workshop 0

# 자원별 수급량 상점 레벨을 명시적으로 초기화
scoreboard players set #wood_lvl material_shop 0
scoreboard players set #stone_lvl material_shop 0
scoreboard players set #coal_lvl material_shop 0
scoreboard players set #copper_lvl material_shop 0
scoreboard players set #iron_lvl material_shop 0
scoreboard players set #gold_lvl material_shop 0
scoreboard players set #diamond_lvl material_shop 0
scoreboard players set #emerald_lvl material_shop 0
scoreboard players set #lapis_lvl material_shop 0
scoreboard players set #xp_lvl material_shop 0

# 자원 상점 목록 UI의 임시 계산 결과 제거
scoreboard players reset #wood_shop_value tmp
scoreboard players reset #stone_shop_value tmp
scoreboard players reset #coal_shop_value tmp
scoreboard players reset #copper_shop_value tmp
scoreboard players reset #iron_shop_value tmp
scoreboard players reset #gold_shop_value tmp
scoreboard players reset #diamond_shop_value tmp
scoreboard players reset #emerald_shop_value tmp
scoreboard players reset #lapis_shop_value tmp
scoreboard players reset #xp_shop_value tmp
scoreboard players reset #material_shop_cost_check tmp

# 이전 계산 결과와 대기 중인 트리거 제거
scoreboard players set #poss_effective_lvl tmp 0
scoreboard players reset @a upgrade_trigger
scoreboard players reset @a shop_trigger
scoreboard players reset @a unlock_trigger

scoreboard objectives remove material_display

data remove storage data tmp

# 9. 엘리베이터 스코어보드 초기화
scoreboard players set #GLOBAL elevator_unlocked 0

# 10. 아이템 드롭 방지
gamerule block_drops false
