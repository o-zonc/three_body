# 상점 업그레이드 트리거
# 1번째 자리: 자리 수 유지용 숫자
# 2번째 자리: 상점 종류 - 자원 상점 1, 결정 상점 2
# 3~4번째 자리: 업그레이드 요소 순서

# 자원 상점 (11XX)
execute as @a if score @s shop_trigger matches 1101 run function resource/shop/purchase {id:"wood",unlock:"wood",name:"나무",color:"yellow",trigger:1101,unit:"배"}
execute as @a if score @s shop_trigger matches 1102 run function resource/shop/purchase {id:"stone",unlock:"stone",name:"돌",color:"gray",trigger:1102,unit:"배"}
execute as @a if score @s shop_trigger matches 1103 run function resource/shop/purchase {id:"coal",unlock:"coal",name:"석탄",color:"dark_gray",trigger:1103,unit:"배"}
execute as @a if score @s shop_trigger matches 1104 run function resource/shop/purchase {id:"iron",unlock:"iron",name:"철",color:"white",trigger:1104,unit:"배"}
execute as @a if score @s shop_trigger matches 1105 run function resource/shop/purchase {id:"xp",unlock:"mob",name:"경험치",color:"green",trigger:1105,unit:" XP/구슬"}
execute as @a if score @s shop_trigger matches 1106 run function resource/shop/purchase {id:"copper",unlock:"copper",name:"구리",color:"gold",trigger:1106,unit:"배"}
execute as @a if score @s shop_trigger matches 1107 run function resource/shop/purchase {id:"gold",unlock:"gold",name:"금",color:"gold",trigger:1107,unit:"배"}
execute as @a if score @s shop_trigger matches 1108 run function resource/shop/purchase {id:"diamond",unlock:"diamond",name:"다이아몬드",color:"aqua",trigger:1108,unit:"배"}
execute as @a if score @s shop_trigger matches 1109 run function resource/shop/purchase {id:"emerald",unlock:"emerald",name:"에메랄드",color:"green",trigger:1109,unit:"배"}
execute as @a if score @s shop_trigger matches 1110 run function resource/shop/purchase {id:"lapis",unlock:"lapis",name:"청금석",color:"blue",trigger:1110,unit:"배"}

# 결정 상점 (12XX)
execute as @a[tag=player] if score @s shop_trigger matches 1301 run function dimensions/nether/piglin_head/trigger/upgrade_piglin_shop

# 엘리베이터 제어 단말 (14XX)
execute as @a[tag=player] if score @s shop_trigger matches 1401 run function elevator/purchase_unlock
execute as @a[tag=player] if score @s shop_trigger matches 1402 run function elevator/purchase_upgrade

# 연금술 공방 (15XX)
execute as @a[tag=player] if score @s shop_trigger matches 1501 run function shop/alchemy/purchase

# 관측소 (16XX)
execute as @a[tag=player] if score @s shop_trigger matches 1601 run function shop/observatory/purchase

execute as @a if score @s shop_trigger matches 1.. run scoreboard players reset @s shop_trigger
