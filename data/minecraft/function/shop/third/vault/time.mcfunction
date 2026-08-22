tellraw @s {text:"  [ 시간 보존 램프 ]",color:"dark_aqua",bold:true}
execute if score #time_bank meta matches 5.. run tellraw @s ["",{text:"  ▣ ",color:"yellow"},{text:"5조각",color:"dark_aqua"},{text:"  문명 시작 단계: 고대",color:"dark_aqua"}]
execute unless score #time_bank meta matches 5.. run tellraw @s ["",{text:"  ▣ ",color:"gray"},{text:"5조각",color:"dark_aqua"},{text:"  문명 시작 단계: 고대",color:"dark_aqua"}]
execute if score #time_bank meta matches 10.. run tellraw @s ["",{text:"  ▣ ",color:"yellow"},{text:"10조각",color:"dark_aqua"},{text:"  초기 나무 진행 · 얼어붙은 다리",color:"dark_aqua"}]
execute unless score #time_bank meta matches 10.. run tellraw @s ["",{text:"  ▣ ",color:"gray"},{text:"10조각",color:"dark_aqua"},{text:"  초기 나무 진행 · 얼어붙은 다리",color:"dark_aqua"}]
execute if score #time_bank meta matches 20.. run tellraw @s ["",{text:"  ▣ ",color:"yellow"},{text:"20조각",color:"dark_aqua"},{text:"  문명 시작 단계: 중세",color:"dark_aqua"}]
execute unless score #time_bank meta matches 20.. run tellraw @s ["",{text:"  ▣ ",color:"gray"},{text:"20조각",color:"dark_aqua"},{text:"  문명 시작 단계: 중세",color:"dark_aqua"}]
execute if score #time_bank meta matches 50.. run tellraw @s ["",{text:"  ▣ ",color:"yellow"},{text:"50조각",color:"dark_aqua"},{text:"  문명 시작 단계: 근대 · 엘리베이터",color:"dark_aqua"}]
execute unless score #time_bank meta matches 50.. run tellraw @s ["",{text:"  ▣ ",color:"gray"},{text:"50조각",color:"dark_aqua"},{text:"  문명 시작 단계: 근대 · 엘리베이터",color:"dark_aqua"}]
execute if score #time_bank meta matches 100.. run tellraw @s ["",{text:"  ▣ ",color:"yellow"},{text:"100조각",color:"dark_aqua"},{text:"  문명 시작 단계: 현대",color:"dark_aqua"}]
execute unless score #time_bank meta matches 100.. run tellraw @s ["",{text:"  ▣ ",color:"gray"},{text:"100조각",color:"dark_aqua"},{text:"  문명 시작 단계: 현대",color:"dark_aqua"}]
tellraw @s {text:"  ※ 문명 시작 단계는 켜진 램프 중 가장 높은 단계가 적용됩니다.",color:"dark_gray"}
