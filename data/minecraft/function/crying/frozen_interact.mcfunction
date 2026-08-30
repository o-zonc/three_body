# 얼어붙은 차원 우는 흑요석 상호작용
execute unless entity @s[advancements={3_polarnight/89_crying_discovery=true}] run advancement grant @s only 3_polarnight/89_crying_discovery frozen_obsidian

# 극한 자원 수급 Lv.2 이전에는 수집하지 않고 힌트만 보여줍니다.
execute unless score #special_second_lvl upgrade matches 2.. at @s run playsound ui.button.click weather @s ~ ~ ~ 1 2
execute unless score #special_second_lvl upgrade matches 2.. run tellraw @s {"text":"수상한 흑요석이 있다...","color":"gray"}
execute unless score #special_second_lvl upgrade matches 2.. run return 0

function crying/collect {id:"frozen",x:11,z:-11}
