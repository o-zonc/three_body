execute store result score #shield_taken tmp run clear @s minecraft:cyan_dye[minecraft:custom_data~{three_body:{quantum:"common"}}] 1
execute unless score #shield_taken tmp matches 1 run title @s actionbar {text:"일반 양자 얽힘 파편이 없습니다.",color:"red"}
execute unless score #shield_taken tmp matches 1 run return 0
scoreboard players add #GLOBAL shield_charge 3600
function quantum/give_broken {amount:1}
function shield/charged
