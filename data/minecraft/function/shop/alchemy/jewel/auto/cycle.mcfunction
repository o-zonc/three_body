# 자동 세공 1사이클
# 에메랄드/청금석/금/다이아몬드를 각각 최대 1회씩 처리합니다.
# 성공 1회당 대상 자원 1과 현재 공방 단계에 맞는 철·구리 연료를 소비합니다.
# 한 사이클에서 하나라도 성공하면 성공 파티클을 한 번만 출력합니다.

scoreboard players set #jewel_auto_any_success tmp 0

function shop/alchemy/jewel/auto/process {id:"emerald",reward:8}
execute if score #jewel_auto_success tmp matches 1 run scoreboard players set #jewel_auto_any_success tmp 1

function shop/alchemy/jewel/auto/process {id:"lapis",reward:8}
execute if score #jewel_auto_success tmp matches 1 run scoreboard players set #jewel_auto_any_success tmp 1

function shop/alchemy/jewel/auto/process {id:"gold",reward:3}
execute if score #jewel_auto_success tmp matches 1 run scoreboard players set #jewel_auto_any_success tmp 1
execute if score #jewel_auto_success tmp matches 1 run scoreboard players set #material_add_value tmp 2
execute if score #jewel_auto_success tmp matches 1 run function resource/add {id:"heat"}

function shop/alchemy/jewel/auto/process {id:"diamond",reward:3}
execute if score #jewel_auto_success tmp matches 1 run scoreboard players set #jewel_auto_any_success tmp 1
execute if score #jewel_auto_success tmp matches 1 run scoreboard players set #material_add_value tmp 2
execute if score #jewel_auto_success tmp matches 1 run function resource/add {id:"cold"}

execute if score #jewel_auto_any_success tmp matches 1 run function shop/alchemy/jewel/effect
