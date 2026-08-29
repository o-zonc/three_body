function util/blank

execute unless score #broken_quantum_storage var = #broken_quantum_storage var run scoreboard players set #broken_quantum_storage var 0
execute store result score #broken_quantum_inventory tmp run clear @s minecraft:gray_dye[minecraft:custom_data~{three_body:{quantum:"broken"}}] 0

tellraw @s [{text:"  [ 양자 얽힘 파편 저장소 ]",color:"dark_purple",bold:true},{text:"\n\n  시공간의 틈에 깨진 양자 얽힘 파편을 격리해 보관합니다.",color:"gray",bold:false},{text:"\n  • 보관 중: ",color:"gray",bold:false},{score:{name:"#broken_quantum_storage",objective:"var"},color:"white",bold:false},{text:"개",color:"gray",bold:false},{text:"\n  • 소지 중: ",color:"gray",bold:false},{score:{name:"#broken_quantum_inventory",objective:"tmp"},color:"white",bold:false},{text:"개",color:"gray",bold:false},{text:"\n\n  "},{text:"이 저장소의 내용은 문명 정산으로 초기화되지 않습니다.",color:"dark_gray",italic:true,bold:false},{text:"\n\n  [ 전부 저장 ]",color:"aqua",bold:true,click_event:{action:"run_command",command:"/trigger item_trigger set 2191"}},{text:"   "},{text:"[ 전부 인출 ]",color:"light_purple",bold:true,click_event:{action:"run_command",command:"/trigger item_trigger set 2192"}},{text:"\n"}]
execute at @s run playsound ui.button.click weather @s ~ ~ ~ 1 2
