# 낡은 단계의 도구를 제거한 뒤 현재 단계 도구를 한 개씩 지급한다.
clear @a[tag=player] *[minecraft:custom_data~{tool:{}}]
execute as @a[tag=player,gamemode=adventure] run function tool/give_current
scoreboard players operation #tool_created_lvl var = #tool upgrade
