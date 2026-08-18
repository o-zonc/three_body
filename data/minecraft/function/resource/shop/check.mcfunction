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

data modify storage data tmp.resource_shop.lines set value [{text:"  [ 자원 상점 - 해금 목록 ]",color:"gold",bold:true,shadow_color:-16777216},{text:"\n\n"}]
execute if score #wood unlock matches 1 run data modify storage data tmp.resource_shop.lines append value {text:"  • 나무",color:"yellow",bold:false,extra:[{text:"  수급량 ",color:"dark_gray",bold:false},{score:{name:"#wood_shop_value",objective:"tmp"},color:"white",bold:false},{text:"배\n",color:"gray",bold:false}]}
execute unless score #wood unlock matches 1 run data modify storage data tmp.resource_shop.lines append value {text:"  • 나무  🔒 해금되지 않음!\n",color:"red",bold:false}
execute if score #stone unlock matches 1 run data modify storage data tmp.resource_shop.lines append value {text:"  • 돌",color:"gray",bold:false,extra:[{text:"  수급량 ",color:"dark_gray",bold:false},{score:{name:"#stone_shop_value",objective:"tmp"},color:"white",bold:false},{text:"배\n",color:"gray",bold:false}]}
execute unless score #stone unlock matches 1 run data modify storage data tmp.resource_shop.lines append value {text:"  • 돌  🔒 해금되지 않음!\n",color:"red",bold:false}
execute if score #coal unlock matches 1 run data modify storage data tmp.resource_shop.lines append value {text:"  • 석탄",color:"dark_gray",bold:false,extra:[{text:"  수급량 ",color:"gray",bold:false},{score:{name:"#coal_shop_value",objective:"tmp"},color:"white",bold:false},{text:"배\n",color:"gray",bold:false}]}
execute unless score #coal unlock matches 1 run data modify storage data tmp.resource_shop.lines append value {text:"  • 석탄  🔒 해금되지 않음!\n",color:"red",bold:false}
execute if score #copper unlock matches 1 run data modify storage data tmp.resource_shop.lines append value {text:"  • 구리",color:"gold",bold:false,extra:[{text:"  수급량 ",color:"dark_gray",bold:false},{score:{name:"#copper_shop_value",objective:"tmp"},color:"white",bold:false},{text:"배\n",color:"gray",bold:false}]}
execute unless score #copper unlock matches 1 run data modify storage data tmp.resource_shop.lines append value {text:"  • 구리  🔒 해금되지 않음!\n",color:"red",bold:false}
execute if score #iron unlock matches 1 run data modify storage data tmp.resource_shop.lines append value {text:"  • 철",color:"white",bold:false,extra:[{text:"  수급량 ",color:"dark_gray",bold:false},{score:{name:"#iron_shop_value",objective:"tmp"},color:"white",bold:false},{text:"배\n",color:"gray",bold:false}]}
execute unless score #iron unlock matches 1 run data modify storage data tmp.resource_shop.lines append value {text:"  • 철  🔒 해금되지 않음!\n",color:"red",bold:false}
execute if score #emerald unlock matches 1 run data modify storage data tmp.resource_shop.lines append value {text:"  • 에메랄드",color:"green",bold:false,extra:[{text:"  수급량 ",color:"dark_gray",bold:false},{score:{name:"#emerald_shop_value",objective:"tmp"},color:"white",bold:false},{text:"배\n",color:"gray",bold:false}]}
execute unless score #emerald unlock matches 1 run data modify storage data tmp.resource_shop.lines append value {text:"  • 에메랄드  🔒 해금되지 않음!\n",color:"red",bold:false}
execute if score #lapis unlock matches 1 run data modify storage data tmp.resource_shop.lines append value {text:"  • 청금석",color:"blue",bold:false,extra:[{text:"  수급량 ",color:"dark_gray",bold:false},{score:{name:"#lapis_shop_value",objective:"tmp"},color:"white",bold:false},{text:"배\n",color:"gray",bold:false}]}
execute unless score #lapis unlock matches 1 run data modify storage data tmp.resource_shop.lines append value {text:"  • 청금석  🔒 해금되지 않음!\n",color:"red",bold:false}
execute if score #gold_lvl material_shop matches 1.. if score #gold unlock matches 1 run data modify storage data tmp.resource_shop.lines append value {text:"  • 금",color:"gold",bold:false,extra:[{text:"  수급량 ",color:"dark_gray",bold:false},{score:{name:"#gold_shop_value",objective:"tmp"},color:"white",bold:false},{text:"배\n",color:"gray",bold:false}]}
execute if score #diamond_lvl material_shop matches 1.. if score #diamond unlock matches 1 run data modify storage data tmp.resource_shop.lines append value {text:"  • 다이아몬드",color:"aqua",bold:false,extra:[{text:"  수급량 ",color:"dark_gray",bold:false},{score:{name:"#diamond_shop_value",objective:"tmp"},color:"white",bold:false},{text:"배\n",color:"gray",bold:false}]}
execute if score #xp_lvl material_shop matches 1.. if score #mob unlock matches 1 run data modify storage data tmp.resource_shop.lines append value {text:"  • 경험치",color:"green",bold:false,extra:[{text:"  구슬당 ",color:"dark_gray",bold:false},{score:{name:"#xp_shop_value",objective:"tmp"},color:"white",bold:false},{text:" XP\n",color:"gray",bold:false}]}
execute at @s run playsound ui.button.click weather @s ~ ~ ~ 1 2
function util/blank
tellraw @s [{storage:"data",nbt:"tmp.resource_shop.lines[]",interpret:true,separator:{text:""}}]
