execute if entity @s[type=interaction,tag=item,tag=dimension] on target run function item/ui/interact_permanent {id:"dimension",name:"차원 이동기",color:"dark_red",description:"현재 차원을 끝내고 다음 차원으로 이동합니다.",trigger:2101}
execute if entity @s[type=interaction,tag=item,tag=shop] if score #level alchemy_workshop matches 1.. on target run function item/ui/interact_permanent {id:"shop",name:"상점 이동기",color:"gray",description:"상점으로 이동합니다.",trigger:2105}
execute if entity @s[type=interaction,tag=item,tag=shop] unless score #level alchemy_workshop matches 1.. on target run title @s actionbar {"text":"연금술 공방 Lv. 1이 필요합니다.","color":"red"}
execute if entity @s[type=interaction,tag=item,tag=alchemy] if score #level alchemy_workshop matches 1.. on target run function item/ui/interact_permanent {id:"alchemy",name:"연금술 공방 이동기",color:"light_purple",description:"연금술 공방으로 이동합니다.",trigger:2106}
execute if entity @s[type=interaction,tag=item,tag=alchemy] unless score #level alchemy_workshop matches 1.. on target run title @s actionbar {"text":"연금술 공방 Lv. 1이 필요합니다.","color":"red"}
execute if entity @s[type=interaction,tag=item,tag=dried] if score #level alchemy_workshop matches 2.. on target run function item/ui/interact {id:"dried",name:"메마른 이동기",color:"gold",description:"메마른 차원으로 이동합니다. 한 번 사용하면 사라집니다.",trigger:2102}
execute if entity @s[type=interaction,tag=item,tag=dried] unless score #level alchemy_workshop matches 2.. on target run title @s actionbar {"text":"연금술 공방 Lv. 2가 필요합니다.","color":"red"}
execute if entity @s[type=interaction,tag=item,tag=frozen] if score #level alchemy_workshop matches 2.. on target run function item/ui/interact {id:"frozen",name:"얼어붙은 이동기",color:"aqua",description:"얼어붙은 차원으로 이동합니다. 한 번 사용하면 사라집니다.",trigger:2103}
execute if entity @s[type=interaction,tag=item,tag=frozen] unless score #level alchemy_workshop matches 2.. on target run title @s actionbar {"text":"연금술 공방 Lv. 2가 필요합니다.","color":"red"}
execute if entity @s[type=interaction,tag=item,tag=overworld] if score #level alchemy_workshop matches 2.. on target run function item/ui/interact {id:"overworld",name:"오버월드 이동기",color:"dark_green",description:"오버월드로 이동합니다. 한 번 사용하면 사라집니다.",trigger:2104}
execute if entity @s[type=interaction,tag=item,tag=overworld] unless score #level alchemy_workshop matches 2.. on target run title @s actionbar {"text":"연금술 공방 Lv. 2가 필요합니다.","color":"red"}
# 우주 이동기 단말은 다른 이동기와 동일하게 item 태그 계열에서 처리합니다.
# 시간축 개방 이전에는 space/mover/interact가 조용히 종료합니다.
execute if entity @s[type=interaction,tag=item,tag=cosmos] on target run function space/mover/interact
