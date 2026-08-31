# 중입자 충돌 실험에서 두 종류의 미지 물질을 발견합니다.
scoreboard players set #yellow unlock 1
scoreboard players set #blue unlock 1
execute in overworld run function resource/material/yellow/place
execute in overworld run function resource/material/blue/place
function tool/refresh_all

playsound entity.player.levelup master @s ~ ~ ~ 0.9 1.25
function util/blank
tellraw @s ["",{text:"  [ 새로운 물질 반응 ]",color:"light_purple",bold:true},{text:"\n\n  중입자 충돌의 잔류물에서 기존 물질과 다른 두 종류의 자원을 발견했습니다.",color:"gray",bold:false},{text:"\n  • ",color:"gray",bold:false},{text:"노랑",color:"yellow",shadow_color:-1704192,bold:false},{text:"\n  • ",color:"gray",bold:false},{text:"파랑",color:"blue",shadow_color:-16746497,bold:false},{text:"\n\n  자원 지대에서 직접 채굴하고 자원 상점 2층에서 기존 자원으로 변환할 수 있습니다.",color:"dark_gray",italic:true,bold:false},{text:"\n"}]
function advancement/general/check
