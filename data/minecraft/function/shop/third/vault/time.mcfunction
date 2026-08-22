tellraw @s {text:"  [ 시간 보존 램프 ]",color:"dark_aqua",bold:true}

execute if score #time_bank meta matches 5.. run tellraw @s {text:"  ▣ ",color:"yellow",hover_event:{action:"show_text",value:{text:"다음 문명을 고대 단계에서 시작합니다.",color:"gray"}},extra:[{text:"5조각",color:"dark_aqua"}]}
execute unless score #time_bank meta matches 5.. run tellraw @s {text:"  ▣ ",color:"dark_gray",hover_event:{action:"show_text",value:{text:"다음 문명을 고대 단계에서 시작합니다.",color:"dark_gray"}},extra:[{text:"5조각",color:"dark_gray"}]}

execute if score #time_bank meta matches 10.. run tellraw @s {text:"  ▣ ",color:"yellow",hover_event:{action:"show_text",value:{text:"초기 나무 생산 진행과 얼어붙은 다리의 개방 상태를 유지합니다.",color:"gray"}},extra:[{text:"10조각",color:"dark_aqua"}]}
execute unless score #time_bank meta matches 10.. run tellraw @s {text:"  ▣ ",color:"dark_gray",hover_event:{action:"show_text",value:{text:"초기 나무 생산 진행과 얼어붙은 다리의 개방 상태를 유지합니다.",color:"dark_gray"}},extra:[{text:"10조각",color:"dark_gray"}]}

execute if score #time_bank meta matches 20.. run tellraw @s {text:"  ▣ ",color:"yellow",hover_event:{action:"show_text",value:{text:"다음 문명을 중세 단계에서 시작합니다.",color:"gray"}},extra:[{text:"20조각",color:"dark_aqua"}]}
execute unless score #time_bank meta matches 20.. run tellraw @s {text:"  ▣ ",color:"dark_gray",hover_event:{action:"show_text",value:{text:"다음 문명을 중세 단계에서 시작합니다.",color:"dark_gray"}},extra:[{text:"20조각",color:"dark_gray"}]}

execute if score #time_bank meta matches 50.. run tellraw @s {text:"  ▣ ",color:"yellow",hover_event:{action:"show_text",value:{text:"다음 문명을 근대 단계에서 시작하고 엘리베이터 진행을 유지합니다.",color:"gray"}},extra:[{text:"50조각",color:"dark_aqua"}]}
execute unless score #time_bank meta matches 50.. run tellraw @s {text:"  ▣ ",color:"dark_gray",hover_event:{action:"show_text",value:{text:"다음 문명을 근대 단계에서 시작하고 엘리베이터 진행을 유지합니다.",color:"dark_gray"}},extra:[{text:"50조각",color:"dark_gray"}]}

execute if score #time_bank meta matches 100.. run tellraw @s {text:"  ▣ ",color:"yellow",hover_event:{action:"show_text",value:{text:"다음 문명을 현대 단계에서 시작합니다.",color:"gray"}},extra:[{text:"100조각",color:"dark_aqua"}]}
execute unless score #time_bank meta matches 100.. run tellraw @s {text:"  ▣ ",color:"dark_gray",hover_event:{action:"show_text",value:{text:"다음 문명을 현대 단계에서 시작합니다.",color:"dark_gray"}},extra:[{text:"100조각",color:"dark_gray"}]}

execute if score #time_bank meta matches 250.. run tellraw @s {text:"  ▣ ",color:"yellow",hover_event:{action:"show_text",value:{text:"시간 자동 인출 기능이 영구 해금됩니다.",color:"gray"}},extra:[{text:"250조각",color:"dark_aqua"}]}
execute unless score #time_bank meta matches 250.. run tellraw @s {text:"  ▣ ",color:"dark_gray",hover_event:{action:"show_text",value:{text:"시간 자동 인출 기능이 영구 해금됩니다.",color:"dark_gray"}},extra:[{text:"250조각",color:"dark_gray"}]}
