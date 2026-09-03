# 매크로 인수: target, base
# 대상 자원의 기존 획득량 함수를 재사용해 자원 상점/발전과제/여명 증폭을 모두 반영한다.
$execute store result score #color_conversion_unit tmp run function resource/material/$(target)/amount
$scoreboard players set #color_conversion_base tmp $(base)
scoreboard players operation #color_conversion_unit tmp *= #color_conversion_base tmp
return run scoreboard players get #color_conversion_unit tmp
