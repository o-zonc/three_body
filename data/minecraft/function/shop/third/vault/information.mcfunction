# 정보 보관 효과는 모든 임계치와 보관 효과를 툴팁에 넣고, 버튼 컴포넌트만 준비한다.
data modify storage data tmp.vault.information_tooltip set value [{text:"[ 정보 보관 효과 ]",color:"light_purple"}]

execute if score #information_bank meta matches 20.. run data modify storage data tmp.vault.information_tooltip append value [{text:"\n20조각",color:"light_purple"},{text:" · 기초 자원 상점 업그레이드를 유지합니다.",color:"gray"}]
execute unless score #information_bank meta matches 20.. run data modify storage data tmp.vault.information_tooltip append value {text:"\n20조각 · 기초 자원 상점 업그레이드를 유지합니다.",color:"dark_gray"}

execute if score #information_bank meta matches 50.. run data modify storage data tmp.vault.information_tooltip append value [{text:"\n50조각",color:"light_purple"},{text:" · 관측소의 건설 상태를 유지합니다.",color:"gray"}]
execute unless score #information_bank meta matches 50.. run data modify storage data tmp.vault.information_tooltip append value {text:"\n50조각 · 관측소의 건설 상태를 유지합니다.",color:"dark_gray"}

execute if score #information_bank meta matches 100.. run data modify storage data tmp.vault.information_tooltip append value [{text:"\n100조각",color:"light_purple"},{text:" · 2층 생산 업그레이드를 유지합니다.",color:"gray"}]
execute unless score #information_bank meta matches 100.. run data modify storage data tmp.vault.information_tooltip append value {text:"\n100조각 · 2층 생산 업그레이드를 유지합니다.",color:"dark_gray"}

execute if score #information_bank meta matches 120.. run data modify storage data tmp.vault.information_tooltip append value [{text:"\n120조각",color:"light_purple"},{text:" · 돌·석탄의 해금 상태를 유지합니다.",color:"gray"}]
execute unless score #information_bank meta matches 120.. run data modify storage data tmp.vault.information_tooltip append value {text:"\n120조각 · 돌·석탄의 해금 상태를 유지합니다.",color:"dark_gray"}

execute if score #information_bank meta matches 150.. run data modify storage data tmp.vault.information_tooltip append value [{text:"\n150조각",color:"light_purple"},{text:" · 고대 문명 발굴 장치의 해금 및 강화 단계를 유지합니다.",color:"gray"}]
execute unless score #information_bank meta matches 150.. run data modify storage data tmp.vault.information_tooltip append value {text:"\n150조각 · 고대 문명 발굴 장치의 해금 및 강화 단계를 유지합니다.",color:"dark_gray"}

execute if score #information_bank meta matches 200.. run data modify storage data tmp.vault.information_tooltip append value [{text:"\n200조각",color:"light_purple"},{text:" · 구리·철·금·다이아몬드의 해금 상태를 유지합니다.",color:"gray"}]
execute unless score #information_bank meta matches 200.. run data modify storage data tmp.vault.information_tooltip append value {text:"\n200조각 · 구리·철·금·다이아몬드의 해금 상태를 유지합니다.",color:"dark_gray"}

execute if score #information_bank meta matches 250.. run data modify storage data tmp.vault.information_tooltip append value [{text:"\n250조각",color:"light_purple"},{text:" · 연금술 공방의 건설 상태·발전 단계와 영구 이동기 구매 상태를 유지합니다.",color:"gray"}]
execute unless score #information_bank meta matches 250.. run data modify storage data tmp.vault.information_tooltip append value {text:"\n250조각 · 연금술 공방의 건설 상태·발전 단계와 영구 이동기 구매 상태를 유지합니다.",color:"dark_gray"}

execute if score #information_bank meta matches 400.. run data modify storage data tmp.vault.information_tooltip append value [{text:"\n400조각",color:"light_purple"},{text:" · 열기·냉기의 해금 상태를 유지합니다.",color:"gray"}]
execute unless score #information_bank meta matches 400.. run data modify storage data tmp.vault.information_tooltip append value {text:"\n400조각 · 열기·냉기의 해금 상태를 유지합니다.",color:"dark_gray"}

execute if score #information_bank meta matches 500.. run data modify storage data tmp.vault.information_tooltip append value [{text:"\n500조각",color:"light_purple"},{text:" · 공장의 건설 단계와 생산 진행을 유지합니다.",color:"gray"}]
execute unless score #information_bank meta matches 500.. run data modify storage data tmp.vault.information_tooltip append value {text:"\n500조각 · 공장의 건설 단계와 생산 진행을 유지합니다.",color:"dark_gray"}

execute if score #information_bank meta matches 600.. run data modify storage data tmp.vault.information_tooltip append value [{text:"\n600조각",color:"light_purple"},{text:" · 에메랄드·청금석의 해금 상태를 유지합니다.",color:"gray"}]
execute unless score #information_bank meta matches 600.. run data modify storage data tmp.vault.information_tooltip append value {text:"\n600조각 · 에메랄드·청금석의 해금 상태를 유지합니다.",color:"dark_gray"}

execute if score #information_bank meta matches 1000.. run data modify storage data tmp.vault.information_tooltip append value [{text:"\n1000조각",color:"light_purple"},{text:" · 입자가속기의 발전 단계를 유지하고 자동 인출을 영구 해금합니다.",color:"gray"}]
execute unless score #information_bank meta matches 1000.. run data modify storage data tmp.vault.information_tooltip append value {text:"\n1000조각 · 입자가속기의 발전 단계를 유지하고 자동 인출을 영구 해금합니다.",color:"dark_gray"}

execute if score #information_bank_unlocked meta matches 1.. run data modify storage data tmp.vault.information_tooltip append value [{text:"\n2000조각",color:"light_purple"},{text:" · 타임머신의 발전 단계를 유지하고 정보 보관소의 상한을 영구 해제합니다.",color:"gray"}]
execute unless score #information_bank_unlocked meta matches 1.. run data modify storage data tmp.vault.information_tooltip append value {text:"\n2000조각 · 타임머신의 발전 단계를 유지하고 정보 보관소의 상한을 영구 해제합니다.",color:"dark_gray"}

data modify storage data tmp.third_shop.vault_line set value {text:"\n\n  ",extra:["",{text:"[ 정보 보관 효과 ]",color:"light_purple",bold:true,hover_event:{action:"show_text",value:{storage:"data",nbt:"tmp.vault.information_tooltip",interpret:true}}}]}
