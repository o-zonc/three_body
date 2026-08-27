# 시간 보관 효과는 모든 임계치와 보관 효과를 툴팁에 넣고, 버튼 컴포넌트만 준비한다.
data modify storage data tmp.vault.time_tooltip set value [{text:"[ 시간 보관 효과 ]",color:"dark_aqua"}]

execute if score #time_bank meta matches 5.. run data modify storage data tmp.vault.time_tooltip append value [{text:"\n5조각",color:"dark_aqua"},{text:" · 다음 문명을 고대 단계에서 시작합니다.",color:"gray"}]
execute unless score #time_bank meta matches 5.. run data modify storage data tmp.vault.time_tooltip append value {text:"\n5조각 · 다음 문명을 고대 단계에서 시작합니다.",color:"dark_gray"}

execute if score #time_bank meta matches 10.. run data modify storage data tmp.vault.time_tooltip append value [{text:"\n10조각",color:"dark_aqua"},{text:" · 초기 나무 생산 진행과 얼어붙은 다리의 개방 상태를 유지합니다.",color:"gray"}]
execute unless score #time_bank meta matches 10.. run data modify storage data tmp.vault.time_tooltip append value {text:"\n10조각 · 초기 나무 생산 진행과 얼어붙은 다리의 개방 상태를 유지합니다.",color:"dark_gray"}

execute if score #time_bank meta matches 20.. run data modify storage data tmp.vault.time_tooltip append value [{text:"\n20조각",color:"dark_aqua"},{text:" · 다음 문명을 중세 단계에서 시작합니다.",color:"gray"}]
execute unless score #time_bank meta matches 20.. run data modify storage data tmp.vault.time_tooltip append value {text:"\n20조각 · 다음 문명을 중세 단계에서 시작합니다.",color:"dark_gray"}

execute if score #time_bank meta matches 35.. run data modify storage data tmp.vault.time_tooltip append value [{text:"\n35조각",color:"dark_aqua"},{text:" · 세 차원 유적지의 복구 상태를 유지합니다.",color:"gray"}]
execute unless score #time_bank meta matches 35.. run data modify storage data tmp.vault.time_tooltip append value {text:"\n35조각 · 세 차원 유적지의 복구 상태를 유지합니다.",color:"dark_gray"}

execute if score #time_bank meta matches 50.. run data modify storage data tmp.vault.time_tooltip append value [{text:"\n50조각",color:"dark_aqua"},{text:" · 다음 문명을 근대 단계에서 시작하고 엘리베이터 진행을 유지합니다.",color:"gray"}]
execute unless score #time_bank meta matches 50.. run data modify storage data tmp.vault.time_tooltip append value {text:"\n50조각 · 다음 문명을 근대 단계에서 시작하고 엘리베이터 진행을 유지합니다.",color:"dark_gray"}

execute if score #time_bank meta matches 100.. run data modify storage data tmp.vault.time_tooltip append value [{text:"\n100조각",color:"dark_aqua"},{text:" · 다음 문명을 현대 단계에서 시작합니다.",color:"gray"}]
execute unless score #time_bank meta matches 100.. run data modify storage data tmp.vault.time_tooltip append value {text:"\n100조각 · 다음 문명을 현대 단계에서 시작합니다.",color:"dark_gray"}

execute if score #time_bank meta matches 250.. run data modify storage data tmp.vault.time_tooltip append value [{text:"\n250조각",color:"dark_aqua"},{text:" · 채굴 도구의 강화 단계를 유지하고 시간 자동 인출 기능을 영구 해금합니다.",color:"gray"}]
execute unless score #time_bank meta matches 250.. run data modify storage data tmp.vault.time_tooltip append value {text:"\n250조각 · 채굴 도구의 강화 단계를 유지하고 시간 자동 인출 기능을 영구 해금합니다.",color:"dark_gray"}

execute if score #time_bank_unlocked meta matches 1.. run data modify storage data tmp.vault.time_tooltip append value [{text:"\n500조각",color:"dark_aqua"},{text:" · 시간 보관소의 상한을 영구 해제합니다.",color:"gray"}]
execute unless score #time_bank_unlocked meta matches 1.. run data modify storage data tmp.vault.time_tooltip append value {text:"\n500조각 · 시간 보관소의 상한을 영구 해제합니다.",color:"dark_gray"}

data modify storage data tmp.third_shop.vault_line set value {text:"\n\n  ",extra:[{text:"[ 시간 보관 효과 ]",color:"dark_aqua",bold:true,hover_event:{action:"show_text",value:{storage:"data",nbt:"tmp.vault.time_tooltip",interpret:true}}}]}
