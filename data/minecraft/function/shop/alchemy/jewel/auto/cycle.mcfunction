# 자동 세공 1사이클
# 에메랄드/청금석/금/다이아몬드를 각각 최대 1회씩 처리합니다.
# 성공 1회당 대상 자원 1 + 철 1 + 구리 연료 1을 소비합니다.

function shop/alchemy/jewel/auto/process {id:"emerald",reward:8}
function shop/alchemy/jewel/auto/process {id:"lapis",reward:8}
function shop/alchemy/jewel/auto/process {id:"gold",reward:3}
execute if score #jewel_auto_success tmp matches 1 run scoreboard players set #material_add_value tmp 2
execute if score #jewel_auto_success tmp matches 1 run function resource/add {id:"heat"}
function shop/alchemy/jewel/auto/process {id:"diamond",reward:3}
execute if score #jewel_auto_success tmp matches 1 run scoreboard players set #material_add_value tmp 2
execute if score #jewel_auto_success tmp matches 1 run function resource/add {id:"cold"}
