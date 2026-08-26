# 상점 업그레이드 트리거
# 1번째 자리: 자리 수 유지용 숫자
# 2번째 자리: 상점 종류 - 자원 상점 1, 결정 상점 2
# 3~4번째 자리: 업그레이드 요소 순서
# 이 함수는 tick에서 shop_trigger 값이 들어온 플레이어를 @s로 지정한 뒤 호출합니다.

# 자원 상점 (11XX)
execute if score @s shop_trigger matches 1101 run function resource/shop/purchase {id:"wood",unlock:"wood",name:"나무",color:"yellow",trigger:1101,unit:"배"}
execute if score @s shop_trigger matches 1102 run function resource/shop/purchase {id:"stone",unlock:"stone",name:"돌",color:"gray",trigger:1102,unit:"배"}
execute if score @s shop_trigger matches 1103 run function resource/shop/purchase {id:"coal",unlock:"coal",name:"석탄",color:"dark_gray",trigger:1103,unit:"배"}
execute if score @s shop_trigger matches 1104 run function resource/shop/purchase {id:"iron",unlock:"iron",name:"철",color:"white",trigger:1104,unit:"배"}
execute if score @s shop_trigger matches 1105 run function resource/shop/purchase {id:"xp",unlock:"mob",name:"경험치",color:"green",trigger:1105,unit:" XP/구슬"}
execute if score @s shop_trigger matches 1106 run function resource/shop/purchase {id:"copper",unlock:"copper",name:"구리",color:"gold",trigger:1106,unit:"배"}
execute if score @s shop_trigger matches 1107 run function resource/shop/purchase {id:"gold",unlock:"gold",name:"금",color:"gold",trigger:1107,unit:"배"}
execute if score @s shop_trigger matches 1108 run function resource/shop/purchase {id:"diamond",unlock:"diamond",name:"다이아몬드",color:"aqua",trigger:1108,unit:"배"}
execute if score @s shop_trigger matches 1109 run function resource/shop/purchase {id:"emerald",unlock:"emerald",name:"에메랄드",color:"green",trigger:1109,unit:"배"}
execute if score @s shop_trigger matches 1110 run function resource/shop/purchase {id:"lapis",unlock:"lapis",name:"청금석",color:"blue",trigger:1110,unit:"배"}

# 엘리베이터 제어 단말 (14XX)
execute if score @s shop_trigger matches 1401 run function elevator/purchase_unlock
execute if score @s shop_trigger matches 1402 run function elevator/purchase_upgrade

# 연금술 공방 (15XX)
execute if score @s shop_trigger matches 1501 run function shop/alchemy/purchase

# 세공 작업대 (151X)
execute if score @s shop_trigger matches 1511 run function shop/alchemy/jewel/purchase {id:"emerald",name:"에메랄드",color:"green",lv0:3,lv1:5,lv2:8}
execute if score @s shop_trigger matches 1512 run function shop/alchemy/jewel/purchase {id:"lapis",name:"청금석",color:"blue",lv0:3,lv1:5,lv2:8}
execute if score @s shop_trigger matches 1513 run function shop/alchemy/jewel/purchase {id:"gold",name:"금",color:"gold",lv0:0,lv1:2,lv2:3}
execute if score @s shop_trigger matches 1514 run function shop/alchemy/jewel/purchase {id:"diamond",name:"다이아몬드",color:"aqua",lv0:0,lv1:2,lv2:3}
execute if score @s shop_trigger matches 1515 run function shop/alchemy/jewel/auto/toggle

# 마법 연구소 (152X)
execute if score @s shop_trigger matches 1521 run function shop/alchemy/lab/purchase

# 관측소 (16XX)
execute if score @s shop_trigger matches 1601 run function shop/observatory/purchase

# 관측소 시간 제어 장치 (17XX)
execute if score @s shop_trigger matches 1701 run function common/era/purchase
execute if score @s shop_trigger matches 1702 run function common/era/paused
execute if score @s shop_trigger matches 1703 run function common/era/resume

# 공장 건설 단말 (18XX)
execute if score @s shop_trigger matches 1801 run function shop/factory/purchase
execute if score @s shop_trigger matches 1811 run function shop/second/purchase {id:"heat",name:"열기 자연 수급",color:"red",effect:"자연 지급 주기",unit:"틱",trigger:1811}
execute if score @s shop_trigger matches 1812 run function shop/second/purchase {id:"cold",name:"냉기 자연 수급",color:"aqua",effect:"자연 지급 주기",unit:"틱",trigger:1812}
execute if score @s shop_trigger matches 1813 run function shop/second/purchase {id:"gold",name:"금 생산",color:"gold",effect:"기본 생산량 보너스",unit:"개",trigger:1813}
execute if score @s shop_trigger matches 1814 run function shop/second/purchase {id:"diamond",name:"다이아몬드 생산",color:"aqua",effect:"기본 생산량 보너스",unit:"개",trigger:1814}
execute if score @s shop_trigger matches 1815 run function shop/second/purchase {id:"special",name:"극한 환경 수급",color:"light_purple",effect:"열기·냉기 수급량 보너스",unit:"개",trigger:1815}
execute if score @s shop_trigger matches 1816 run function shop/second/purchase {id:"get",name:"기초 생산 공정",color:"dark_aqua",effect:"모든 기본 생산량 보너스",unit:"개",trigger:1816}

# 자원 상점 3층 / 여명 상호작용 (182X~183X)
execute if score @s shop_trigger matches 1821 run function shop/third/storage_purchase {id:"information",name:"정보",color:"light_purple",unit:"조각",bank_max:1000,trigger:1821,withdraw_trigger:1825}
execute if score @s shop_trigger matches 1822 run function shop/third/storage_purchase {id:"time",name:"시간",color:"dark_aqua",unit:"조각",bank_max:500,trigger:1822,withdraw_trigger:1826}
execute if score @s shop_trigger matches 1823 run function shop/third/world_eye/purchase
execute if score @s shop_trigger matches 1824 run function shop/third/world_eye/synthesize
execute if score @s shop_trigger matches 1825 run function meta/manual_withdraw {id:"information",name:"정보",color:"light_purple",unit:"조각",bank_max:1000,trigger:1821,withdraw_trigger:1825}
execute if score @s shop_trigger matches 1826 run function meta/manual_withdraw {id:"time",name:"시간",color:"dark_aqua",unit:"조각",bank_max:500,trigger:1822,withdraw_trigger:1826}
execute if score @s shop_trigger matches 1827 run function shop/third/expansion/information
execute if score @s shop_trigger matches 1828 run function shop/third/expansion/time
execute if score @s shop_trigger matches 1830 run function dawn/reactor/craft
execute if score @s shop_trigger matches 1831 run function dawn/amplifier/purchase {id:"overworld",name:"오버월드",color:"green",trigger:1831}
execute if score @s shop_trigger matches 1832 run function dawn/amplifier/purchase {id:"dried",name:"메마른 세계",color:"gold",trigger:1832}
execute if score @s shop_trigger matches 1833 run function dawn/amplifier/purchase {id:"frozen",name:"얼어붙은 세계",color:"aqua",trigger:1833}

# 색채 자원 변환 (184X)
execute if score @s shop_trigger matches 1841 run function shop/color/convert {source:"yellow",source_name:"노랑",source_color:"yellow",target:"copper",target_name:"구리",target_color:"gold",base:100}
execute if score @s shop_trigger matches 1842 run function shop/color/convert {source:"yellow",source_name:"노랑",source_color:"yellow",target:"gold",target_name:"금",target_color:"gold",base:20}
execute if score @s shop_trigger matches 1843 run function shop/color/convert {source:"yellow",source_name:"노랑",source_color:"yellow",target:"heat",target_name:"열기",target_color:"red",base:50}
execute if score @s shop_trigger matches 1844 run function shop/color/convert {source:"blue",source_name:"파랑",source_color:"blue",target:"iron",target_name:"철",target_color:"white",base:100}
execute if score @s shop_trigger matches 1845 run function shop/color/convert {source:"blue",source_name:"파랑",source_color:"blue",target:"diamond",target_name:"다이아몬드",target_color:"aqua",base:10}
execute if score @s shop_trigger matches 1846 run function shop/color/convert {source:"blue",source_name:"파랑",source_color:"blue",target:"cold",target_name:"냉기",target_color:"aqua",base:50}

# 얼어붙은 차원 시설 (19XX)
execute if score @s shop_trigger matches 1901 run function frozen/interaction/purchase_shop
execute if score @s shop_trigger matches 1902 run function frozen/interaction/purchase_bridge
execute if score @s shop_trigger matches 1903 run function frozen/interaction/purchase_maze
execute if score @s shop_trigger matches 1904 run function frozen/interaction/purchase_warmth_potion

# 메마른 차원 시설 (20XX)
execute if score @s shop_trigger matches 2000..2001 run function dried/relic/upgrade

# 극야 차원 정산대/보관소/공허의 구멍 (21XX)
execute if score @s shop_trigger matches 2101 run function reckoning/run
execute if score @s shop_trigger matches 2102 run function crying/vault_open
execute if score @s shop_trigger matches 2111 run function shop/hole/collect
execute if score @s shop_trigger matches 2112 run function shop/hole/upgrade

# 처리한 플레이어만 초기화하고 다음 /trigger 입력을 허용합니다.
scoreboard players reset @s shop_trigger
scoreboard players enable @s shop_trigger
