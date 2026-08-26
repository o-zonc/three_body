$scoreboard players set #dried_relic_focus var $(mode)
$tellraw @s ["",{text:"  발굴 우선 탐색을 ",color:"gray"},{text:"$(name)",color:"$(color)",bold:true},{text:"(으)로 변경했습니다.",color:"gray"}]
function dried/probability/ui
