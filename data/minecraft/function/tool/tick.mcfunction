# 전역 도구 레벨이 바뀌면 모든 플레이어의 도구를 교체한다.
execute unless score #tool_created_lvl var = #tool upgrade run function tool/refresh_all

# 커스텀 도구는 버릴 수 없다. 드롭 엔티티를 즉시 투척한 플레이어 쪽으로 되돌린다.
execute as @e[type=minecraft:item] if items entity @s contents *[minecraft:custom_data~{tool:{}}] run tag @s add dropped_resource_tool
execute as @e[type=minecraft:item,tag=dropped_resource_tool] run data merge entity @s {PickupDelay:0s}
execute as @e[type=minecraft:item,tag=dropped_resource_tool] at @s if entity @p[tag=player,gamemode=adventure,distance=..4] run tp @s @p[tag=player,gamemode=adventure,distance=..4,sort=nearest,limit=1]

# 오버월드 제단(0 -59 0): 웅크리기 시작 시 강화 UI를 연다.
execute as @a[tag=player,tag=shift] at @s if items entity @s weapon.mainhand *[minecraft:custom_data~{tool:{}}] unless dimension minecraft:overworld run title @s actionbar {text:"하늘의 힘은 천공의 제단 위에서만 응답합니다.",color:"aqua",italic:true}
execute as @a[tag=player,tag=shift] at @s if items entity @s weapon.mainhand *[minecraft:custom_data~{tool:{}}] if dimension minecraft:overworld positioned 0 -59 0 unless entity @s[distance=..1.5] run title @s actionbar {text:"하늘의 힘은 천공의 제단 위에서만 응답합니다.",color:"aqua",italic:true}
execute as @a[tag=player,tag=shift] at @s if items entity @s weapon.mainhand *[minecraft:custom_data~{tool:{}}] if dimension minecraft:overworld positioned 0 -59 0 if entity @s[distance=..1.5] run function tool/altar/show
execute as @a[tag=player,scores={tool_trigger=1..}] at @s run function tool/altar/trigger
