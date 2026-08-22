tellraw @s {text:"  [ 정보 보존 램프 ]",color:"light_purple",bold:true}

execute if score #information_bank meta matches 10.. run tellraw @s {text:"  ▣ ",color:"yellow",hover_event:{action:"show_text",value:{text:"기초 자원 상점 업그레이드를 유지합니다.",color:"gray"}},extra:[{text:"10조각",color:"light_purple"}]}
execute unless score #information_bank meta matches 10.. run tellraw @s {text:"  ▣ ",color:"dark_gray",hover_event:{action:"show_text",value:{text:"기초 자원 상점 업그레이드를 유지합니다.",color:"dark_gray"}},extra:[{text:"10조각",color:"dark_gray"}]}

execute if score #information_bank meta matches 25.. run tellraw @s {text:"  ▣ ",color:"yellow",hover_event:{action:"show_text",value:{text:"관측소의 건설 상태를 유지합니다.",color:"gray"}},extra:[{text:"25조각",color:"light_purple"}]}
execute unless score #information_bank meta matches 25.. run tellraw @s {text:"  ▣ ",color:"dark_gray",hover_event:{action:"show_text",value:{text:"관측소의 건설 상태를 유지합니다.",color:"dark_gray"}},extra:[{text:"25조각",color:"dark_gray"}]}

execute if score #information_bank meta matches 50.. run tellraw @s {text:"  ▣ ",color:"yellow",hover_event:{action:"show_text",value:{text:"2층 생산 업그레이드를 유지합니다.",color:"gray"}},extra:[{text:"50조각",color:"light_purple"}]}
execute unless score #information_bank meta matches 50.. run tellraw @s {text:"  ▣ ",color:"dark_gray",hover_event:{action:"show_text",value:{text:"2층 생산 업그레이드를 유지합니다.",color:"dark_gray"}},extra:[{text:"50조각",color:"dark_gray"}]}

execute if score #information_bank meta matches 100.. run tellraw @s {text:"  ▣ ",color:"yellow",hover_event:{action:"show_text",value:{text:"연금술 공방의 건설 상태와 발전 단계를 유지합니다.",color:"gray"}},extra:[{text:"100조각",color:"light_purple"}]}
execute unless score #information_bank meta matches 100.. run tellraw @s {text:"  ▣ ",color:"dark_gray",hover_event:{action:"show_text",value:{text:"연금술 공방의 건설 상태와 발전 단계를 유지합니다.",color:"dark_gray"}},extra:[{text:"100조각",color:"dark_gray"}]}

execute if score #information_bank meta matches 250.. run tellraw @s {text:"  ▣ ",color:"yellow",hover_event:{action:"show_text",value:{text:"공장의 건설 단계와 생산 진행을 유지합니다.",color:"gray"}},extra:[{text:"250조각",color:"light_purple"}]}
execute unless score #information_bank meta matches 250.. run tellraw @s {text:"  ▣ ",color:"dark_gray",hover_event:{action:"show_text",value:{text:"공장의 건설 단계와 생산 진행을 유지합니다.",color:"dark_gray"}},extra:[{text:"250조각",color:"dark_gray"}]}

execute if score #information_bank meta matches 500.. run tellraw @s {text:"  ▣ ",color:"yellow",hover_event:{action:"show_text",value:{text:"입자가속기의 발전 단계를 유지합니다.\n정보 자동 인출 기능이 영구 해금됩니다.",color:"gray"}},extra:[{text:"500조각",color:"light_purple"}]}
execute unless score #information_bank meta matches 500.. run tellraw @s {text:"  ▣ ",color:"dark_gray",hover_event:{action:"show_text",value:{text:"입자가속기의 발전 단계를 유지합니다.\n정보 자동 인출 기능이 영구 해금됩니다.",color:"dark_gray"}},extra:[{text:"500조각",color:"dark_gray"}]}

execute if score #information_bank meta matches 1000.. run tellraw @s {text:"  ▣ ",color:"yellow",hover_event:{action:"show_text",value:{text:"타임머신의 발전 단계를 유지합니다.",color:"gray"}},extra:[{text:"1000조각",color:"light_purple"}]}
execute unless score #information_bank meta matches 1000.. run tellraw @s {text:"  ▣ ",color:"dark_gray",hover_event:{action:"show_text",value:{text:"타임머신의 발전 단계를 유지합니다.",color:"dark_gray"}},extra:[{text:"1000조각",color:"dark_gray"}]}
