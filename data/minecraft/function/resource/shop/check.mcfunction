execute store result score #wood_shop_value tmp run function resource/shop/value {id:"wood"}
execute store result score #stone_shop_value tmp run function resource/shop/value {id:"stone"}
execute store result score #coal_shop_value tmp run function resource/shop/value {id:"coal"}
execute store result score #copper_shop_value tmp run function resource/shop/value {id:"copper"}
execute store result score #iron_shop_value tmp run function resource/shop/value {id:"iron"}
execute store result score #gold_shop_value tmp run function resource/shop/value {id:"gold"}
execute store result score #diamond_shop_value tmp run function resource/shop/value {id:"diamond"}
execute store result score #emerald_shop_value tmp run function resource/shop/value {id:"emerald"}
execute store result score #lapis_shop_value tmp run function resource/shop/value {id:"lapis"}
execute store result score #xp_shop_value tmp run function resource/shop/value {id:"xp"}

data modify storage data tmp.resource_shop.lines set value [{text:"  [ 자원 상점 1층 - 수급 강화 ]",color:"gold",bold:true,shadow_color:-16777216},{text:"\n\n"}]
execute if score #wood unlock matches 1 run data modify storage data tmp.resource_shop.lines append value {text:"  • 나무",color:"yellow",extra:[{text:"  수급량 ",color:"gray"},{score:{name:"#wood_shop_value",objective:"tmp"},color:"white"},{text:"배  (Lv. ",color:"gray"},{score:{name:"#wood_lvl",objective:"material_shop"},color:"white"},{text:")\n",color:"gray"}],bold:false}
execute unless score #wood unlock matches 1 run data modify storage data tmp.resource_shop.lines append value {text:"  • 나무  🔒 해금되지 않음!\n",color:"red",bold:false}
execute if score #stone unlock matches 1 run data modify storage data tmp.resource_shop.lines append value {text:"  • 돌",color:"gray",extra:[{text:"  수급량 ",color:"gray"},{score:{name:"#stone_shop_value",objective:"tmp"},color:"white"},{text:"배  (Lv. ",color:"gray"},{score:{name:"#stone_lvl",objective:"material_shop"},color:"white"},{text:")\n",color:"gray"}],bold:false}
execute unless score #stone unlock matches 1 run data modify storage data tmp.resource_shop.lines append value {text:"  • 돌  🔒 해금되지 않음!\n",color:"red",bold:false}
execute if score #coal unlock matches 1 run data modify storage data tmp.resource_shop.lines append value {text:"  • 석탄",color:"dark_gray",extra:[{text:"  수급량 ",color:"gray"},{score:{name:"#coal_shop_value",objective:"tmp"},color:"white"},{text:"배  (Lv. ",color:"gray"},{score:{name:"#coal_lvl",objective:"material_shop"},color:"white"},{text:")",color:"gray"},{text:" ★",color:"gold"},{text:" 추천\n",color:"white"}],bold:false}
execute unless score #coal unlock matches 1 run data modify storage data tmp.resource_shop.lines append value {text:"  • 석탄  🔒 해금되지 않음!\n",color:"red",bold:false}
execute if score #copper unlock matches 1 run data modify storage data tmp.resource_shop.lines append value {text:"  • 구리",color:"gold",extra:[{text:"  수급량 ",color:"gray"},{score:{name:"#copper_shop_value",objective:"tmp"},color:"white"},{text:"배  (Lv. ",color:"gray"},{score:{name:"#copper_lvl",objective:"material_shop"},color:"white"},{text:")",color:"gray"}],bold:false}
execute unless score #copper unlock matches 1 run data modify storage data tmp.resource_shop.lines append value {text:"  • 구리  🔒 해금되지 않음!\n",color:"red",bold:false}
execute if score #iron unlock matches 1 run data modify storage data tmp.resource_shop.lines append value {text:"  • 철",color:"white",extra:[{text:"  수급량 ",color:"gray"},{score:{name:"#iron_shop_value",objective:"tmp"},color:"white"},{text:"배  (Lv. ",color:"gray"},{score:{name:"#iron_lvl",objective:"material_shop"},color:"white"},{text:")\n",color:"gray"}],bold:false}
execute unless score #iron unlock matches 1 run data modify storage data tmp.resource_shop.lines append value {text:"  • 철  🔒 해금되지 않음!\n",color:"red",bold:false}
execute if score #emerald unlock matches 1 run data modify storage data tmp.resource_shop.lines append value {text:"  • 에메랄드",color:"green",extra:[{text:"  수급량 ",color:"gray"},{score:{name:"#emerald_shop_value",objective:"tmp"},color:"white"},{text:"배  (Lv. ",color:"gray"},{score:{name:"#emerald_lvl",objective:"material_shop"},color:"white"},{text:")\n",color:"gray"}],bold:false}
execute unless score #emerald unlock matches 1 run data modify storage data tmp.resource_shop.lines append value {text:"  • 에메랄드  🔒 해금되지 않음!\n",color:"red",bold:false}
execute if score #lapis unlock matches 1 run data modify storage data tmp.resource_shop.lines append value {text:"  • 청금석",color:"blue",extra:[{text:"  수급량 ",color:"gray"},{score:{name:"#lapis_shop_value",objective:"tmp"},color:"white"},{text:"배  (Lv. ",color:"gray"},{score:{name:"#lapis_lvl",objective:"material_shop"},color:"white"},{text:")\n",color:"gray"}],bold:false}
execute unless score #lapis unlock matches 1 run data modify storage data tmp.resource_shop.lines append value {text:"  • 청금석  🔒 해금되지 않음!\n",color:"red",bold:false}
execute if score #gold_lvl material_shop matches 1.. if score #gold unlock matches 1 run data modify storage data tmp.resource_shop.lines append value {text:"  • 금",color:"gold",extra:[{text:"  수급량 ",color:"gray"},{score:{name:"#gold_shop_value",objective:"tmp"},color:"white"},{text:"배  (Lv. ",color:"gray"},{score:{name:"#gold_lvl",objective:"material_shop"},color:"white"},{text:")\n",color:"gray"}],bold:false}
execute if score #diamond_lvl material_shop matches 1.. if score #diamond unlock matches 1 run data modify storage data tmp.resource_shop.lines append value {text:"  • 다이아몬드",color:"aqua",extra:[{text:"  수급량 ",color:"gray"},{score:{name:"#diamond_shop_value",objective:"tmp"},color:"white"},{text:"배  (Lv. ",color:"gray"},{score:{name:"#diamond_lvl",objective:"material_shop"},color:"white"},{text:")\n",color:"gray"}],bold:false}
execute if score #xp_lvl material_shop matches 1.. if score #mob unlock matches 1 run data modify storage data tmp.resource_shop.lines append value {text:"  • 경험치",color:"green",extra:[{text:"  구슬당 ",color:"gray"},{score:{name:"#xp_shop_value",objective:"tmp"},color:"white"},{text:" XP  (Lv. ",color:"gray"},{score:{name:"#xp_lvl",objective:"material_shop"},color:"white"},{text:")\n",color:"gray"}],bold:false}
execute at @s run playsound ui.button.click weather @s ~ ~ ~ 1 2
function util/blank
tellraw @s [{storage:"data",nbt:"tmp.resource_shop.lines[]",interpret:true,separator:{text:""}}]
