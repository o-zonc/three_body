# 세 세계의 유산 보상용 일반 자원 원장.
# 정보·시간·흑요석은 메타 자원이므로 제외한다.
scoreboard players operation #reckoning_wood tmp = #wood material
scoreboard players operation #reckoning_stone tmp = #stone material
scoreboard players operation #reckoning_coal tmp = #coal material
scoreboard players operation #reckoning_copper tmp = #copper material
scoreboard players operation #reckoning_iron tmp = #iron material
scoreboard players operation #reckoning_gold tmp = #gold material
scoreboard players operation #reckoning_diamond tmp = #diamond material
scoreboard players operation #reckoning_emerald tmp = #emerald material
scoreboard players operation #reckoning_lapis tmp = #lapis material
scoreboard players operation #reckoning_heat tmp = #heat material
scoreboard players operation #reckoning_cold tmp = #cold material
scoreboard players operation #reckoning_yellow tmp = #yellow material
scoreboard players operation #reckoning_blue tmp = #blue material

# 실제 해금된 일반 자원이 정산 직전 표시 원장에 반영되도록 동기화한다.
function ui/sidebar/sync_unlocked

# 기존 원장 항목을 사이드바 표시 상태 스냅샷으로 재사용한다.
scoreboard players set #reckoning_stone_unlock tmp 0
scoreboard players set #reckoning_coal_unlock tmp 0
scoreboard players set #reckoning_copper_unlock tmp 0
scoreboard players set #reckoning_iron_unlock tmp 0
scoreboard players set #reckoning_gold_unlock tmp 0
scoreboard players set #reckoning_diamond_unlock tmp 0
scoreboard players set #reckoning_emerald_unlock tmp 0
scoreboard players set #reckoning_lapis_unlock tmp 0
scoreboard players set #reckoning_heat_unlock tmp 0
scoreboard players set #reckoning_cold_unlock tmp 0
scoreboard players set #reckoning_yellow_unlock tmp 0
scoreboard players set #reckoning_blue_unlock tmp 0
scoreboard players operation #reckoning_stone_unlock tmp = #stone sidebar_visible
scoreboard players operation #reckoning_coal_unlock tmp = #coal sidebar_visible
scoreboard players operation #reckoning_copper_unlock tmp = #copper sidebar_visible
scoreboard players operation #reckoning_iron_unlock tmp = #iron sidebar_visible
scoreboard players operation #reckoning_gold_unlock tmp = #gold sidebar_visible
scoreboard players operation #reckoning_diamond_unlock tmp = #diamond sidebar_visible
scoreboard players operation #reckoning_emerald_unlock tmp = #emerald sidebar_visible
scoreboard players operation #reckoning_lapis_unlock tmp = #lapis sidebar_visible
scoreboard players operation #reckoning_heat_unlock tmp = #heat sidebar_visible
scoreboard players operation #reckoning_cold_unlock tmp = #cold sidebar_visible
scoreboard players operation #reckoning_yellow_unlock tmp = #yellow unlock
scoreboard players operation #reckoning_blue_unlock tmp = #blue unlock
