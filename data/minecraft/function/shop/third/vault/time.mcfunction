# 보존 효과 설명은 제목의 단일 툴팁으로 구성한다.
data modify storage data tmp.vault.time_tooltip set value [{text:"[ 시간 보존 효과 ]",color:"dark_aqua",bold:true}]
execute if score #time_bank meta matches 5.. run data modify storage data tmp.vault.time_tooltip append value {text:"\n5조각 · 다음 문명을 고대 단계에서 시작합니다.",color:"gray",bold:false}
execute unless score #time_bank meta matches 5.. run data modify storage data tmp.vault.time_tooltip append value {text:"\n5조각 · 다음 문명을 고대 단계에서 시작합니다.",color:"dark_gray",bold:false}
execute if score #time_bank meta matches 10.. run data modify storage data tmp.vault.time_tooltip append value {text:"\n10조각 · 초기 나무 생산 진행과 얼어붙은 다리의 개방 상태를 유지합니다.",color:"gray"}
execute unless score #time_bank meta matches 10.. run data modify storage data tmp.vault.time_tooltip append value {text:"\n10조각 · 초기 나무 생산 진행과 얼어붙은 다리의 개방 상태를 유지합니다.",color:"dark_gray"}
execute if score #time_bank meta matches 20.. run data modify storage data tmp.vault.time_tooltip append value {text:"\n20조각 · 다음 문명을 중세 단계에서 시작합니다.",color:"gray"}
execute unless score #time_bank meta matches 20.. run data modify storage data tmp.vault.time_tooltip append value {text:"\n20조각 · 다음 문명을 중세 단계에서 시작합니다.",color:"dark_gray"}
execute if score #time_bank meta matches 50.. run data modify storage data tmp.vault.time_tooltip append value {text:"\n50조각 · 다음 문명을 근대 단계에서 시작하고 엘리베이터 진행을 유지합니다.",color:"gray"}
execute unless score #time_bank meta matches 50.. run data modify storage data tmp.vault.time_tooltip append value {text:"\n50조각 · 다음 문명을 근대 단계에서 시작하고 엘리베이터 진행을 유지합니다.",color:"dark_gray"}
execute if score #time_bank meta matches 100.. run data modify storage data tmp.vault.time_tooltip append value {text:"\n100조각 · 다음 문명을 현대 단계에서 시작합니다.",color:"gray"}
execute unless score #time_bank meta matches 100.. run data modify storage data tmp.vault.time_tooltip append value {text:"\n100조각 · 다음 문명을 현대 단계에서 시작합니다.",color:"dark_gray"}
execute if score #time_bank meta matches 250.. run data modify storage data tmp.vault.time_tooltip append value {text:"\n250조각 · 시간 자동 인출 기능을 영구 해금합니다.",color:"gray"}
execute unless score #time_bank meta matches 250.. run data modify storage data tmp.vault.time_tooltip append value {text:"\n250조각 · 시간 자동 인출 기능을 영구 해금합니다.",color:"dark_gray"}

tellraw @s {text:"  [ 시간 보존 램프 ]",color:"dark_aqua",bold:true,hover_event:{action:"show_text",value:{storage:"data",nbt:"tmp.vault.time_tooltip",interpret:true}}}

# 화면에는 조각 임계치만 표시한다. 달성 시 자원 색, 미달성 시 dark_gray.
execute if score #time_bank meta matches 5.. run tellraw @s {text:"  5조각",color:"dark_aqua"}
execute unless score #time_bank meta matches 5.. run tellraw @s {text:"  5조각",color:"dark_gray"}
execute if score #time_bank meta matches 10.. run tellraw @s {text:"  10조각",color:"dark_aqua"}
execute unless score #time_bank meta matches 10.. run tellraw @s {text:"  10조각",color:"dark_gray"}
execute if score #time_bank meta matches 20.. run tellraw @s {text:"  20조각",color:"dark_aqua"}
execute unless score #time_bank meta matches 20.. run tellraw @s {text:"  20조각",color:"dark_gray"}
execute if score #time_bank meta matches 50.. run tellraw @s {text:"  50조각",color:"dark_aqua"}
execute unless score #time_bank meta matches 50.. run tellraw @s {text:"  50조각",color:"dark_gray"}
execute if score #time_bank meta matches 100.. run tellraw @s {text:"  100조각",color:"dark_aqua"}
execute unless score #time_bank meta matches 100.. run tellraw @s {text:"  100조각",color:"dark_gray"}
execute if score #time_bank meta matches 250.. run tellraw @s {text:"  250조각",color:"dark_aqua"}
execute unless score #time_bank meta matches 250.. run tellraw @s {text:"  250조각",color:"dark_gray"}
