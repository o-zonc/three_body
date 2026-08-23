# load 시 공장 청크가 아직 로드되지 않았다면 표시등 갱신을 미뤘다가
# 오버월드에서 interaction 엔티티가 보이는 첫 tick에 한 번 처리합니다.
execute unless entity @e[type=interaction,tag=factory] run return 0
function factory/refresh_lights
scoreboard players set #factory_light_dirty var 0
