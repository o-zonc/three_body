# 금/다이아몬드 초반 재생성 대기 시간을 줄여 플레이 정체를 완화한다.
# 희소성은 주로 도구의 채굴 제한과 해금 조건으로 유지한다.

data modify storage data const.resource.gold.regen[{lvl:0}].value set value 200
data modify storage data const.resource.gold.regen[{lvl:1}].value set value 120
data modify storage data const.resource.gold.regen[{lvl:2}].value set value 60
data modify storage data const.resource.gold.regen[{lvl:3}].value set value 20
data modify storage data const.resource.gold.regen[{lvl:4}].value set value 5

data modify storage data const.resource.diamond.regen[{lvl:0}].value set value 400
data modify storage data const.resource.diamond.regen[{lvl:1}].value set value 240
data modify storage data const.resource.diamond.regen[{lvl:2}].value set value 100
data modify storage data const.resource.diamond.regen[{lvl:3}].value set value 30
data modify storage data const.resource.diamond.regen[{lvl:4}].value set value 5
