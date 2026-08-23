# 기능별 우클릭 분배

# 기본
execute if entity @s[tag=product] run function resource/product_interaction_manager
execute if entity @s[tag=item] run function item/item_interaction_manager

# 특수 구조물
execute if entity @s[tag=po,tag=info] on target run function resource/interaction {id:"information"}
execute if entity @s[tag=po,tag=time] on target run function resource/interaction {id:"time"}
execute if entity @s[tag=frozen,tag=info] on target run function frozen/interaction/info
execute if entity @s[tag=frozen,tag=shop] on target run function frozen/interaction/shop
execute if entity @s[tag=dried,tag=info] on target run function dried/interaction/info
execute if entity @s[tag=dried,tag=left] on target run function dried/relic/ui
execute if entity @s[tag=dried,tag=secret] on target run function dried/secret/interact
execute if entity @s[tag=dawn,tag=reactor] on target run function dawn/reactor/interact
execute if entity @s[tag=dawn,tag=overworld] on target run function dawn/amplifier/ui {id:"overworld",name:"오버월드",color:"green",trigger:1831}
execute if entity @s[tag=dawn,tag=dried] on target run function dawn/amplifier/ui {id:"dried",name:"메마른 세계",color:"gold",trigger:1832}
execute if entity @s[tag=dawn,tag=frozen] on target run function dawn/amplifier/ui {id:"frozen",name:"얼어붙은 세계",color:"aqua",trigger:1833}
execute if entity @s[tag=dawn,tag=spear] on target run function dawn/spear/interact
execute if entity @s[tag=polarnight,tag=reckoning] on target run function polarnight/interaction/reckoning
execute if entity @s[tag=crying,tag=overworld] on target run function crying/collect {id:"overworld",x:11,z:11}
execute if entity @s[tag=crying,tag=dried] on target run function crying/dried_interact
execute if entity @s[tag=crying,tag=frozen] on target run function crying/frozen_interact
execute if entity @s[tag=crying,tag=dawn] on target run function crying/dawn_interact
execute if entity @s[tag=shop,tag=vault] on target run function crying/vault_interact
execute if entity @s[tag=shop,tag=hole] on target run function shop/hole/interact
execute if entity @s[tag=era] on target run function common/era/interact
execute if entity @s[tag=alchemy,tag=jewel] on target run function shop/alchemy/jewel/ui
execute if entity @s[tag=alchemy,tag=lab] on target run function shop/alchemy/lab/ui


# 상점류
# 모든 상점 interaction 엔티티는 shop 태그를 공통으로 사용한다.
execute if entity @s[tag=shop,tag=check,tag=first] on target run function resource/shop/check
execute if entity @s[tag=shop,tag=check,tag=second] on target run function resource/shop/check_second
execute if entity @s[tag=shop,tag=check,tag=third] on target run function resource/shop/check_third
execute if entity @s[tag=shop,tag=factory] on target run function shop/factory/interact
execute if entity @s[tag=shop,tag=elevator] on target run function elevator/shop_interact
execute if entity @s[tag=shop,tag=alchemy] on target run function shop/alchemy/interact
execute if entity @s[tag=shop,tag=observatory] on target run function shop/observatory/interact
execute if entity @s[tag=shop,tag=heat] on target run function shop/second/ui {id:"heat",name:"열기 자연 수급",color:"red",effect:"자연 지급 주기",unit:"틱",trigger:1811}
execute if entity @s[tag=shop,tag=cold] on target run function shop/second/ui {id:"cold",name:"냉기 자연 수급",color:"aqua",effect:"자연 지급 주기",unit:"틱",trigger:1812}
execute if entity @s[tag=shop,tag=gold] on target run function shop/second/ui {id:"gold",name:"금 생산",color:"gold",effect:"기본 생산량 보너스",unit:"개",trigger:1813}
execute if entity @s[tag=shop,tag=diamond] on target run function shop/second/ui {id:"diamond",name:"다이아몬드 생산",color:"aqua",effect:"기본 생산량 보너스",unit:"개",trigger:1814}
execute if entity @s[tag=shop,tag=special] on target run function shop/second/ui {id:"special",name:"극한 환경 수급",color:"light_purple",effect:"열기·냉기 수급량 보너스",unit:"개",trigger:1815}
execute if entity @s[tag=shop,tag=get] on target run function shop/second/ui {id:"get",name:"기초 생산 공정",color:"dark_aqua",effect:"모든 기본 생산량 보너스",unit:"개",trigger:1816}
# 노랑/파랑 변환 단말은 중입자 충돌 발전과제 이전에는 UI 함수가 조용히 종료합니다.
execute if entity @s[tag=shop,tag=yellow] on target run function shop/color/yellow_ui
execute if entity @s[tag=shop,tag=blue] on target run function shop/color/blue_ui
execute if entity @s[tag=shop,tag=time,tag=!polarnight] on target run function shop/third/storage_ui {id:"time",name:"시간",title:"상점 및 지갑",color:"dark_aqua",unit:"조각",bank_max:500,trigger:1822,withdraw_trigger:1826}
execute if entity @s[tag=shop,tag=time,tag=polarnight] on target run function shop/third/storage_ui {id:"time",name:"시간",title:"보관소",color:"dark_aqua",unit:"조각",bank_max:500,trigger:1822,withdraw_trigger:1826}
execute if entity @s[tag=shop,tag=information,tag=!polarnight] on target run function shop/third/storage_ui {id:"information",name:"정보",title:"상점 및 지갑",color:"light_purple",unit:"조각",bank_max:1000,trigger:1821,withdraw_trigger:1825}
execute if entity @s[tag=shop,tag=information,tag=polarnight] on target run function shop/third/storage_ui {id:"information",name:"정보",title:"보관소",color:"light_purple",unit:"조각",bank_max:1000,trigger:1821,withdraw_trigger:1825}
execute if entity @s[tag=shop,tag=world_eye] on target run function shop/third/world_eye/ui
execute if entity @s[tag=shop,tag=!check,tag=!factory,tag=!heat,tag=!gold,tag=!cold,tag=!diamond,tag=!special,tag=!get,tag=!yellow,tag=!blue,tag=!time,tag=!information,tag=!world_eye,tag=!era,tag=!alchemy,tag=!elevator,tag=!observatory,tag=!item,tag=!entrance,tag=!frozen,tag=!vault,tag=!hole] run function resource/shop/interact
execute if entity @s[tag=factory,tag=!shop] run function factory/interact
execute if entity @s[tag=factory,tag=accelerator] on target run function accelerator/ui
execute if entity @s[tag=factory,tag=shield] on target run function shield/ui

data remove entity @s interaction
