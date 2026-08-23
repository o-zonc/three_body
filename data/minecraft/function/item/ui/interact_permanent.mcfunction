# Macro args: id, name, color, description, trigger
# 영구 구매한 이동기는 다시 결제할 수 없도록 구매 버튼을 비활성화한다.
$execute if score #$(id)_mover unlock matches 1.. at @s run playsound ui.button.click weather @s ~ ~ ~ 1 2
$execute if score #$(id)_mover unlock matches 1.. run function util/blank
$execute if score #$(id)_mover unlock matches 1.. run tellraw @s ["",{text:"  [ $(name) ]",color:"$(color)",bold:true},{text:"\n\n  §8•§7 $(description)"},{text:"\n\n  [ 구매 완료 ]",color:"green"},{text:"\n"}]
$execute if score #$(id)_mover unlock matches 1.. run return 0

$function item/ui/interact {id:"$(id)",name:"$(name)",color:"$(color)",description:"$(description)",trigger:$(trigger)}
