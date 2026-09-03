# 타임머신을 처음 최대 단계로 발전시킨 직후 스크롤 엔딩을 시작한다.
execute if entity @s[tag=ending_seen] run return 0
tag @s add ending_seen
function story/ending/prepare
schedule function story/ending/04_credit_scroll 1t
