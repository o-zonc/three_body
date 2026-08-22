# 시간 보존 램프는 제목 한 줄만 표시하고, 모든 임계치와 보존 효과는 툴팁에 넣는다.
data modify storage data tmp.vault.time_tooltip set value [{text:"[ 시간 보존 효과 ]",color:"dark_aqua",bold:true}]

execute if score #time_bank meta matches 5.. run data modify storage data tmp.vault.time_tooltip append value [{text:"\n5조각",color:"dark_aqua",bold:false},{text:" · 다음 문명을 고대 단계에서 시작합니다.",color:"gray"}]
execute unless score #time_bank meta matches 5.. run data modify storage data tmp.vault.time_tooltip append value {text:"\n5조각 · 다음 문명을 고대 단계에서 시작합니다.",color:"dark_gray",bold:false}

execute if score #time_bank meta matches 10.. run data modify storage data tmp.vault.time_tooltip append value [{text:"\n10조각",color:"dark_aqua"},{text:" · 초기 나무 생산 진행과 얼어붙은 다리의 개방 상태를 유지합니다.",color:"gray"}]
execute unless score #time_bank meta matches 10.. run data modify storage data tmp.vault.time_tooltip append value {text:"\n10조각 · 초기 나무 생산 진행과 얼어붙은 다리의 개방 상태를 유지합니다.",color:"dark_gray"}

execute if score #time_bank meta matches 20.. run data modify storage data tmp.vault.time_tooltip append value [{text:"\n20조각",color:"dark_aqua"},{text:" · 다음 문명을 중세 단계에서 시작합니다.",color:"gray"}]
execute unless score #time_bank meta matches 20.. run data modify storage data tmp.vault.time_tooltip append value {text:"\n20조각 · 다음 문명을 중세 단계에서 시작합니다.",color:"dark_gray"}

execute if score #time_bank meta matches 50.. run data modify storage data tmp.vault.time_tooltip append value [{text:"\n50조각",color:"dark_aqua"},{text:" · 다음 문명을 근대 단계에서 시작하고 엘리베이터 진행을 유지합니다.",color:"gray"}]
execute unless score #time_bank meta matches 50.. run data modify storage data tmp.vault.time_tooltip append value {text:"\n50조각 · 다음 문명을 근대 단계에서 시작하고 엘리베이터 진행을 유지합니다.",color:"dark_gray"}

execute if score #time_bank meta matches 100.. run data modify storage data tmp.vault.time_tooltip append value [{text:"\n100조각",color:"dark_aqua"},{text:" · 다음 문명을 현대 단계에서 시작합니다.",color:"gray"}]
execute unless score #time_bank meta matches 100.. run data modify storage data tmp.vault.time_tooltip append value {text:"\n100조각 · 다음 문명을 현대 단계에서 시작합니다.",color:"dark_gray"}

execute if score #time_bank meta matches 250.. run data modify storage data tmp.vault.time_tooltip append value [{text:"\n250조각",color:"dark_aqua"},{text:" · 시간 자동 인출 기능을 영구 해금합니다.",color:"gray"}]
execute unless score #time_bank meta matches 250.. run data modify storage data tmp.vault.time_tooltip append value {text:"\n250조각 · 시간 자동 인출 기능을 영구 해금합니다.",color:"dark_gray"}

tellraw @s {text:"  [ 시간 보존 램프 ]",color:"dark_aqua",bold:true,hover_event:{action:"show_text",value:{storage:"data",nbt:"tmp.vault.time_tooltip",interpret:true}}}
