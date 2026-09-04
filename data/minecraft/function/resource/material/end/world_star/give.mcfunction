give @s minecraft:nether_star[minecraft:custom_name={text:"세계의 별",color:"#9EF971",italic:false},minecraft:lore=[{text:"특수 - 엔딩, 웅크리기로 사용",color:"gold",italic:false},{text:""},{text:"한 세계가 응축된 별",color:"gray",italic:false}],minecraft:custom_data={three_body:{world_star:1b}}] 1
execute at @s run playsound ui.toast.challenge_complete master @s ~ ~ ~ 0.9 1.2
title @s actionbar {text:"세계의 별을 획득했습니다.",color:"#9EF971",italic:false}
