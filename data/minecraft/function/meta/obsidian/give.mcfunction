# 입력: #material_add_value tmp
# 흑요석은 보관소 없이 전량 인벤토리 아이템으로 지급합니다.
execute if score #material_add_value tmp matches ..0 run return 0
execute store result storage data tmp.obsidian_give.amount int 1 run scoreboard players get #material_add_value tmp
function meta/obsidian/give_item with storage data tmp.obsidian_give
function meta/sync
title @s actionbar [{text:"흑요석 +",color:"dark_gray",shadow_color:-8388480},{score:{name:"#material_add_value",objective:"tmp"},color:"dark_gray",shadow_color:-8388480}]
return 1
