# 시간 보관 효과는 모든 임계치와 보관 효과를 툴팁에 넣고, 버튼 컴포넌트만 준비한다.
data modify storage data tmp.vault.time_tooltip set value [{text:"[ 시간 보관 효과 ]",color:"dark_aqua"}]

execute if score #time_bank meta matches 10.. run data modify storage data tmp.vault.time_tooltip append value [{text:"\n10조각",color:"dark_aqua"},{text:" · 다음 문명을 고대 단계에서 시작합니다.",color:"gray"}]
execute unless score #time_bank meta matches 10.. run data modify storage data tmp.vault.time_tooltip append value {text:"\n10조각 · 다음 문명을 고대 단계에서 시작합니다.",color:"dark_gray"}

execute if score #time_bank meta matches 20.. run data modify storage data tmp.vault.time_tooltip append value [{text:"\n20조각",color:"dark_aqua"},{text:" · 나무의 재생산 업그레이드와 얼어붙은 다리의 개방 상태를 유지합니다.",color:"gray"}]
execute unless score #time_bank meta matches 20.. run data modify storage data tmp.vault.time_tooltip append value {text:"\n20조각 · 나무의 재생산 업그레이드와 얼어붙은 다리의 개방 상태를 유지합니다.",color:"dark_gray"}

execute if score #time_bank meta matches 40.. run data modify storage data tmp.vault.time_tooltip append value [{text:"\n40조각",color:"dark_aqua"},{text:" · 다음 문명을 중세 단계에서 시작합니다.",color:"gray"}]
execute unless score #time_bank meta matches 40.. run data modify storage data tmp.vault.time_tooltip append value {text:"\n40조각 · 다음 문명을 중세 단계에서 시작합니다.",color:"dark_gray"}

execute if score #time_bank meta matches 60.. run data modify storage data tmp.vault.time_tooltip append value [{text:"\n60조각",color:"dark_aqua"},{text:" · 돌·석탄의 재생산 업그레이드를 유지합니다.",color:"gray"}]
execute unless score #time_bank meta matches 60.. run data modify storage data tmp.vault.time_tooltip append value {text:"\n60조각 · 돌·석탄의 재생산 업그레이드를 유지합니다.",color:"dark_gray"}

execute if score #time_bank meta matches 70.. run data modify storage data tmp.vault.time_tooltip append value [{text:"\n70조각",color:"dark_aqua"},{text:" · 세 차원 유적지의 복구 상태를 유지합니다.",color:"gray"}]
execute unless score #time_bank meta matches 70.. run data modify storage data tmp.vault.time_tooltip append value {text:"\n70조각 · 세 차원 유적지의 복구 상태를 유지합니다.",color:"dark_gray"}

execute if score #time_bank meta matches 80.. run data modify storage data tmp.vault.time_tooltip append value [{text:"\n80조각",color:"dark_aqua"},{text:" · 다음 문명을 근대 단계에서 시작합니다.",color:"gray"}]
execute unless score #time_bank meta matches 80.. run data modify storage data tmp.vault.time_tooltip append value {text:"\n80조각 · 다음 문명을 근대 단계에서 시작합니다.",color:"dark_gray"}

execute if score #time_bank meta matches 100.. run data modify storage data tmp.vault.time_tooltip append value [{text:"\n100조각",color:"dark_aqua"},{text:" · 엘리베이터 진행과 구리·철·금·다이아몬드의 재생산 업그레이드를 유지합니다.",color:"gray"}]
execute unless score #time_bank meta matches 100.. run data modify storage data tmp.vault.time_tooltip append value {text:"\n100조각 · 엘리베이터 진행과 구리·철·금·다이아몬드의 재생산 업그레이드를 유지합니다.",color:"dark_gray"}

execute if score #time_bank meta matches 150.. run data modify storage data tmp.vault.time_tooltip append value [{text:"\n150조각",color:"dark_aqua"},{text:" · 에메랄드·청금석의 재생산 업그레이드를 유지합니다.",color:"gray"}]
execute unless score #time_bank meta matches 150.. run data modify storage data tmp.vault.time_tooltip append value {text:"\n150조각 · 에메랄드·청금석의 재생산 업그레이드를 유지합니다.",color:"dark_gray"}

execute if score #time_bank meta matches 200.. run data modify storage data tmp.vault.time_tooltip append value [{text:"\n200조각",color:"dark_aqua"},{text:" · 다음 문명을 현대 단계에서 시작합니다.",color:"gray"}]
execute unless score #time_bank meta matches 200.. run data modify storage data tmp.vault.time_tooltip append value {text:"\n200조각 · 다음 문명을 현대 단계에서 시작합니다.",color:"dark_gray"}

execute if score #time_bank meta matches 500.. run data modify storage data tmp.vault.time_tooltip append value [{text:"\n500조각",color:"dark_aqua"},{text:" · 채굴 도구의 강화 단계를 유지하고 시간 자동 인출 기능을 영구 해금합니다.",color:"gray"}]
execute unless score #time_bank meta matches 500.. run data modify storage data tmp.vault.time_tooltip append value {text:"\n500조각 · 채굴 도구의 강화 단계를 유지하고 시간 자동 인출 기능을 영구 해금합니다.",color:"dark_gray"}

execute if score #time_bank_unlocked meta matches 1.. run data modify storage data tmp.vault.time_tooltip append value [{text:"\n1000조각",color:"dark_aqua"},{text:" · 시간 보관소가 최대치에 도달했습니다.",color:"gray"}]
execute unless score #time_bank_unlocked meta matches 1.. run data modify storage data tmp.vault.time_tooltip append value {text:"\n1000조각 · 시간 보관소 최대치입니다.",color:"dark_gray"}

data modify storage data tmp.third_shop.vault_line set value {text:"\n\n  ",extra:["",{text:"[ 시간 보관 효과 ]",color:"dark_aqua",bold:true,hover_event:{action:"show_text",value:{storage:"data",nbt:"tmp.vault.time_tooltip",interpret:true}}}]}
