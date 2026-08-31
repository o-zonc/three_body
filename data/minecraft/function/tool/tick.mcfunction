# 전역 도구 레벨이 바뀌면 모든 플레이어의 도구를 교체한다.
execute unless score #tool_created_lvl var = #tool upgrade run function tool/refresh_all

# 커스텀 도구 드롭 보호는 mover/protect_drops의 공용 item 엔티티 검사에서 처리합니다.

# 오버월드 제단(0 -59 0): 웅크리기 시작 시 강화 UI를 연다.
function tool/altar/remember_resources
execute as @a[tag=player,tag=shift] at @s unless items entity @s weapon.mainhand * if dimension minecraft:overworld positioned 0 -59 0 if entity @s[distance=..1.5] run function tool/altar/show_resources
execute as @a[tag=player,tag=shift] at @s if items entity @s weapon.mainhand *[minecraft:custom_data~{tool:{}}] unless dimension minecraft:overworld run function tool/altar/show_outside_hint
execute as @a[tag=player,tag=shift] at @s if items entity @s weapon.mainhand *[minecraft:custom_data~{tool:{}}] if dimension minecraft:overworld positioned 0 -59 0 unless entity @s[distance=..1.5] run function tool/altar/show_outside_hint
execute as @a[tag=player,tag=shift] at @s if items entity @s weapon.mainhand *[minecraft:custom_data~{tool:{}}] if dimension minecraft:overworld positioned 0 -59 0 if entity @s[distance=..1.5] run function tool/altar/show
execute as @a[tag=player,scores={tool_trigger=1..}] at @s run function tool/altar/trigger
