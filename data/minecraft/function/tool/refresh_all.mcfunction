# 각 플레이어의 낡은 도구를 제거한 직후 같은 실행 문맥에서 새 도구를 지급한다.
execute as @a[tag=player] at @s run function tool/refresh_one
scoreboard players operation #tool_created_lvl var = #tool upgrade
