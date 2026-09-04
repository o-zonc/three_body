# 주 손에 세계의 별을 들고 웅크리기 시작했을 때 한 번 발동한다.
execute as @a[tag=player,tag=shift] at @s if items entity @s weapon.mainhand minecraft:nether_star[minecraft:custom_data~{three_body:{world_star:1b}}] run function resource/material/end/world_star/use
