# 기본 자원은 Lv. 0부터, 추가 자원은 Lv. 1부터 목록에 표시한다.
execute unless score #wood_lvl material_shop = #wood_lvl material_shop run scoreboard players set #wood_lvl material_shop 0
execute unless score #stone_lvl material_shop = #stone_lvl material_shop run scoreboard players set #stone_lvl material_shop 0
execute unless score #coal_lvl material_shop = #coal_lvl material_shop run scoreboard players set #coal_lvl material_shop 0
execute unless score #copper_lvl material_shop = #copper_lvl material_shop run scoreboard players set #copper_lvl material_shop 0
execute unless score #iron_lvl material_shop = #iron_lvl material_shop run scoreboard players set #iron_lvl material_shop 0
execute unless score #emerald_lvl material_shop = #emerald_lvl material_shop run scoreboard players set #emerald_lvl material_shop 0
execute unless score #lapis_lvl material_shop = #lapis_lvl material_shop run scoreboard players set #lapis_lvl material_shop 0

execute store result score #wood_shop_value tmp run function resource/material/wood/amount
execute store result score #stone_shop_value tmp run function resource/material/stone/amount
execute store result score #coal_shop_value tmp run function resource/material/coal/amount
execute store result score #copper_shop_value tmp run function resource/material/copper/amount
execute store result score #iron_shop_value tmp run function resource/material/iron/amount
execute store result score #gold_shop_value tmp run function resource/material/gold/amount
execute store result score #diamond_shop_value tmp run function resource/material/diamond/amount
execute store result score #emerald_shop_value tmp run function resource/material/emerald/amount
execute store result score #lapis_shop_value tmp run function resource/material/lapis/amount
function dimensions/overworld/shop/material_shop/value/now_xp_data
execute store result score #xp_shop_value tmp run data get storage data tmp.material_shop.xp.now.value

data modify storage data tmp.shop_check.lines set value [{text:"  [ 자원 상점 - 해금 목록 ]",color:"gold",bold:true,shadow_color:-16777216},{text:"\n\n"}]

execute if score #wood unlock matches 1 run data modify storage data tmp.shop_check.lines append value {text:"  • 나무",color:"yellow",bold:false,extra:[{text:"  수급량 ",color:"dark_gray"},{score:{name:"#wood_shop_value",objective:"tmp"},color:"white"},{text:"배\n",color:"gray"}]}
execute unless score #wood unlock matches 1 run data modify storage data tmp.shop_check.lines append value {text:"  • 나무",color:"yellow",bold:false,extra:[{text:"  🔒 해금되지 않음!\n",color:"red"}]}
execute if score #stone unlock matches 1 run data modify storage data tmp.shop_check.lines append value {text:"  • 돌",color:"gray",bold:false,extra:[{text:"  수급량 ",color:"dark_gray"},{score:{name:"#stone_shop_value",objective:"tmp"},color:"white"},{text:"배\n",color:"gray"}]}
execute unless score #stone unlock matches 1 run data modify storage data tmp.shop_check.lines append value {text:"  • 돌",color:"gray",bold:false,extra:[{text:"  🔒 해금되지 않음!\n",color:"red"}]}
execute if score #coal unlock matches 1 run data modify storage data tmp.shop_check.lines append value {text:"  • 석탄",color:"dark_gray",bold:false,extra:[{text:"  수급량 ",color:"gray"},{score:{name:"#coal_shop_value",objective:"tmp"},color:"white"},{text:"배\n",color:"gray"}]}
execute unless score #coal unlock matches 1 run data modify storage data tmp.shop_check.lines append value {text:"  • 석탄",color:"dark_gray",bold:false,extra:[{text:"  🔒 해금되지 않음!\n",color:"red"}]}
execute if score #copper unlock matches 1 run data modify storage data tmp.shop_check.lines append value {text:"  • 구리",color:"gold",bold:false,extra:[{text:"  수급량 ",color:"dark_gray"},{score:{name:"#copper_shop_value",objective:"tmp"},color:"white"},{text:"배\n",color:"gray"}]}
execute unless score #copper unlock matches 1 run data modify storage data tmp.shop_check.lines append value {text:"  • 구리",color:"gold",bold:false,extra:[{text:"  🔒 해금되지 않음!\n",color:"red"}]}
execute if score #iron unlock matches 1 run data modify storage data tmp.shop_check.lines append value {text:"  • 철",color:"white",bold:false,extra:[{text:"  수급량 ",color:"dark_gray"},{score:{name:"#iron_shop_value",objective:"tmp"},color:"white"},{text:"배\n",color:"gray"}]}
execute unless score #iron unlock matches 1 run data modify storage data tmp.shop_check.lines append value {text:"  • 철",color:"white",bold:false,extra:[{text:"  🔒 해금되지 않음!\n",color:"red"}]}
execute if score #gold_lvl material_shop matches 1.. if score #gold unlock matches 1 run data modify storage data tmp.shop_check.lines append value {text:"  • 금",color:"gold",bold:false,extra:[{text:"  수급량 ",color:"dark_gray"},{score:{name:"#gold_shop_value",objective:"tmp"},color:"white"},{text:"배\n",color:"gray"}]}
execute if score #gold_lvl material_shop matches 1.. unless score #gold unlock matches 1 run data modify storage data tmp.shop_check.lines append value {text:"  • 금",color:"gold",bold:false,extra:[{text:"  🔒 해금되지 않음!\n",color:"red"}]}
execute if score #diamond_lvl material_shop matches 1.. if score #diamond unlock matches 1 run data modify storage data tmp.shop_check.lines append value {text:"  • 다이아몬드",color:"aqua",bold:false,extra:[{text:"  수급량 ",color:"dark_gray"},{score:{name:"#diamond_shop_value",objective:"tmp"},color:"white"},{text:"배\n",color:"gray"}]}
execute if score #diamond_lvl material_shop matches 1.. unless score #diamond unlock matches 1 run data modify storage data tmp.shop_check.lines append value {text:"  • 다이아몬드",color:"aqua",bold:false,extra:[{text:"  🔒 해금되지 않음!\n",color:"red"}]}
execute if score #emerald unlock matches 1 run data modify storage data tmp.shop_check.lines append value {text:"  • 에메랄드",color:"green",bold:false,extra:[{text:"  수급량 ",color:"dark_gray"},{score:{name:"#emerald_shop_value",objective:"tmp"},color:"white"},{text:"배\n",color:"gray"}]}
execute unless score #emerald unlock matches 1 run data modify storage data tmp.shop_check.lines append value {text:"  • 에메랄드",color:"green",bold:false,extra:[{text:"  🔒 해금되지 않음!\n",color:"red"}]}
execute if score #lapis unlock matches 1 run data modify storage data tmp.shop_check.lines append value {text:"  • 청금석",color:"blue",bold:false,extra:[{text:"  수급량 ",color:"dark_gray"},{score:{name:"#lapis_shop_value",objective:"tmp"},color:"white"},{text:"배\n",color:"gray"}]}
execute unless score #lapis unlock matches 1 run data modify storage data tmp.shop_check.lines append value {text:"  • 청금석",color:"blue",bold:false,extra:[{text:"  🔒 해금되지 않음!\n",color:"red"}]}
execute if score #xp_lvl material_shop matches 1.. if score #mob unlock matches 1 run data modify storage data tmp.shop_check.lines append value {text:"  • 경험치",color:"green",bold:false,extra:[{text:"  구슬당 ",color:"dark_gray"},{score:{name:"#xp_shop_value",objective:"tmp"},color:"white"},{text:" XP\n",color:"gray"}]}
execute if score #xp_lvl material_shop matches 1.. unless score #mob unlock matches 1 run data modify storage data tmp.shop_check.lines append value {text:"  • 경험치",color:"green",bold:false,extra:[{text:"  🔒 해금되지 않음!\n",color:"red"}]}

data modify storage data tmp.shop_check.lines append value {text:"\n  ※ 기본 자원은 Lv. 0부터 표시됩니다.\n",color:"dark_gray",bold:false}

playsound ui.button.click weather @s ~ ~ ~ 1 2
function util/blank
tellraw @s ["",{storage:"data",nbt:"tmp.shop_check.lines[]",interpret:true,separator:{text:""}}]
