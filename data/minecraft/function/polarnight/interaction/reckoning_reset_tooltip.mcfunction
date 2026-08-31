# 원래 초기화되지만 보관소 효과 또는 발전과제로 보존할 수 있는 항목만 표시한다.
data modify storage data tmp.reckoning_reset_tooltip set value ["",{text:"[ 문명 정산 시 초기화 ]\n",color:"red",bold:true}]

# 자원 상점과 생산 업그레이드
execute if score #information_bank meta matches 20.. run data modify storage data tmp.reckoning_reset_tooltip append value {text:"• 자원 상점 1층 진행도\n",color:"gray",strikethrough:true}
execute unless score #information_bank meta matches 20.. run data modify storage data tmp.reckoning_reset_tooltip append value {text:"• 자원 상점 1층 진행도\n",color:"gray"}
execute if score #information_bank meta matches 120.. run data modify storage data tmp.reckoning_reset_tooltip append value {text:"• 석재 자원 해금 상태\n",color:"gray",strikethrough:true}
execute unless score #information_bank meta matches 120.. run data modify storage data tmp.reckoning_reset_tooltip append value {text:"• 석재 자원 해금 상태\n",color:"gray"}
execute if score #information_bank meta matches 200.. run data modify storage data tmp.reckoning_reset_tooltip append value {text:"• 금속 자원 해금 상태\n",color:"gray",strikethrough:true}
execute unless score #information_bank meta matches 200.. run data modify storage data tmp.reckoning_reset_tooltip append value {text:"• 금속 자원 해금 상태\n",color:"gray"}
execute if score #information_bank meta matches 400.. run data modify storage data tmp.reckoning_reset_tooltip append value {text:"• 특수 자원 해금 상태\n",color:"gray",strikethrough:true}
execute unless score #information_bank meta matches 400.. run data modify storage data tmp.reckoning_reset_tooltip append value {text:"• 특수 자원 해금 상태\n",color:"gray"}
execute if score #information_bank meta matches 600.. run data modify storage data tmp.reckoning_reset_tooltip append value {text:"• 보석 자원 해금 상태\n",color:"gray",strikethrough:true}
execute unless score #information_bank meta matches 600.. run data modify storage data tmp.reckoning_reset_tooltip append value {text:"• 보석 자원 해금 상태\n",color:"gray"}
execute if score #time_bank meta matches 20.. run data modify storage data tmp.reckoning_reset_tooltip append value {text:"• 나무 재생 업그레이드\n",color:"gray",strikethrough:true}
execute unless score #time_bank meta matches 20.. run data modify storage data tmp.reckoning_reset_tooltip append value {text:"• 나무 재생 업그레이드\n",color:"gray"}
execute if score #time_bank meta matches 60.. run data modify storage data tmp.reckoning_reset_tooltip append value {text:"• 석재 자원 재생 업그레이드\n",color:"gray",strikethrough:true}
execute unless score #time_bank meta matches 60.. run data modify storage data tmp.reckoning_reset_tooltip append value {text:"• 석재 자원 재생 업그레이드\n",color:"gray"}
execute if score #time_bank meta matches 100.. run data modify storage data tmp.reckoning_reset_tooltip append value {text:"• 금속 자원 재생 업그레이드\n",color:"gray",strikethrough:true}
execute unless score #time_bank meta matches 100.. run data modify storage data tmp.reckoning_reset_tooltip append value {text:"• 금속 자원 재생 업그레이드\n",color:"gray"}
execute if score #time_bank meta matches 150.. run data modify storage data tmp.reckoning_reset_tooltip append value {text:"• 보석 자원 재생 업그레이드\n",color:"gray",strikethrough:true}
execute unless score #time_bank meta matches 150.. run data modify storage data tmp.reckoning_reset_tooltip append value {text:"• 보석 자원 재생 업그레이드\n",color:"gray"}
execute if score #information_bank meta matches 100.. run data modify storage data tmp.reckoning_reset_tooltip append value {text:"• 자원 상점 2층 진행도\n",color:"gray",strikethrough:true}
execute unless score #information_bank meta matches 100.. run data modify storage data tmp.reckoning_reset_tooltip append value {text:"• 자원 상점 2층 진행도\n",color:"gray"}
execute if score #time_bank meta matches 500.. run data modify storage data tmp.reckoning_reset_tooltip append value {text:"• 채굴 도구 강화 단계\n",color:"gray",strikethrough:true}
execute unless score #time_bank meta matches 500.. run data modify storage data tmp.reckoning_reset_tooltip append value {text:"• 채굴 도구 강화 단계\n",color:"gray"}

# 문명 발전 단계는 현재 시대까지 복원할 수 있을 때 취소선을 표시한다.
scoreboard players set #reckoning_age_preserved tmp 0
execute if score #overworld civilization_age matches 5 if score #time_bank meta matches 10.. run scoreboard players set #reckoning_age_preserved tmp 1
execute if score #overworld civilization_age matches 6 if score #time_bank meta matches 40.. run scoreboard players set #reckoning_age_preserved tmp 1
execute if score #overworld civilization_age matches 7 if score #time_bank meta matches 80.. run scoreboard players set #reckoning_age_preserved tmp 1
execute if score #overworld civilization_age matches 8.. if score #time_bank meta matches 200.. run scoreboard players set #reckoning_age_preserved tmp 1
execute if score #reckoning_age_preserved tmp matches 1 run data modify storage data tmp.reckoning_reset_tooltip append value {text:"• 문명 발전 단계\n",color:"gray",strikethrough:true}
execute unless score #reckoning_age_preserved tmp matches 1 run data modify storage data tmp.reckoning_reset_tooltip append value {text:"• 문명 발전 단계\n",color:"gray"}

# 주요 시설
execute if score #information_bank meta matches 50.. run data modify storage data tmp.reckoning_reset_tooltip append value {text:"• 관측소 및 시간 제어 장치\n",color:"gray",strikethrough:true}
execute unless score #information_bank meta matches 50.. run data modify storage data tmp.reckoning_reset_tooltip append value {text:"• 관측소 및 시간 제어 장치\n",color:"gray"}
execute if score #information_bank meta matches 250.. run data modify storage data tmp.reckoning_reset_tooltip append value {text:"• 연금술 공방, 세공 작업대 및 마법 연구\n",color:"gray",strikethrough:true}
execute unless score #information_bank meta matches 250.. run data modify storage data tmp.reckoning_reset_tooltip append value {text:"• 연금술 공방, 세공 작업대 및 마법 연구\n",color:"gray"}
execute if score #time_bank meta matches 100.. run data modify storage data tmp.reckoning_reset_tooltip append value {text:"• 엘리베이터 발전 단계\n",color:"gray",strikethrough:true}
execute unless score #time_bank meta matches 100.. run data modify storage data tmp.reckoning_reset_tooltip append value {text:"• 엘리베이터 발전 단계\n",color:"gray"}
execute if score #information_bank meta matches 500.. run data modify storage data tmp.reckoning_reset_tooltip append value {text:"• 공장 건설·생산 단계\n",color:"gray",strikethrough:true}
execute unless score #information_bank meta matches 500.. run data modify storage data tmp.reckoning_reset_tooltip append value {text:"• 공장 건설·생산 단계\n",color:"gray"}
execute if score #information_bank meta matches 1000.. run data modify storage data tmp.reckoning_reset_tooltip append value {text:"• 입자가속기 발전 단계\n",color:"gray",strikethrough:true}
execute unless score #information_bank meta matches 1000.. run data modify storage data tmp.reckoning_reset_tooltip append value {text:"• 입자가속기 발전 단계\n",color:"gray"}
execute if score #information_bank meta matches 2000.. run data modify storage data tmp.reckoning_reset_tooltip append value {text:"• 타임머신 발전 단계\n",color:"gray",strikethrough:true}
execute unless score #information_bank meta matches 2000.. run data modify storage data tmp.reckoning_reset_tooltip append value {text:"• 타임머신 발전 단계\n",color:"gray"}

# 메마른·얼어붙은 차원 진행
execute if score #information_bank meta matches 75.. run data modify storage data tmp.reckoning_reset_tooltip append value {text:"• 고대 문명 발굴 장치 진행도\n",color:"gray",strikethrough:true}
execute unless score #information_bank meta matches 75.. run data modify storage data tmp.reckoning_reset_tooltip append value {text:"• 고대 문명 발굴 장치 진행도\n",color:"gray"}
execute if score #time_bank meta matches 20.. run data modify storage data tmp.reckoning_reset_tooltip append value {text:"• 메마른 세계 업그레이드 (유황·진사)\n",color:"gray",strikethrough:true}
execute unless score #time_bank meta matches 20.. run data modify storage data tmp.reckoning_reset_tooltip append value {text:"• 메마른 세계 업그레이드 (유황·진사)\n",color:"gray"}
execute if score #time_bank meta matches 35.. run data modify storage data tmp.reckoning_reset_tooltip append value {text:"• 메마른 차원의 유적 복구\n",color:"gray",strikethrough:true}
execute unless score #time_bank meta matches 35.. run data modify storage data tmp.reckoning_reset_tooltip append value {text:"• 메마른 차원의 유적 복구\n",color:"gray"}
execute if score #time_bank meta matches 10.. run data modify storage data tmp.reckoning_reset_tooltip append value {text:"• 얼어붙은 다리\n",color:"gray",strikethrough:true}
execute unless score #time_bank meta matches 10.. run data modify storage data tmp.reckoning_reset_tooltip append value {text:"• 얼어붙은 다리\n",color:"gray"}
execute if entity @a[advancements={1_frozen/10_shop=true}] run data modify storage data tmp.reckoning_reset_tooltip append value {text:"• 얼어붙은 차원 상점\n",color:"gray",strikethrough:true}
execute unless entity @a[advancements={1_frozen/10_shop=true}] run data modify storage data tmp.reckoning_reset_tooltip append value {text:"• 얼어붙은 차원 상점\n",color:"gray"}
execute if entity @a[advancements={1_frozen/12_maze=true}] run data modify storage data tmp.reckoning_reset_tooltip append value {text:"• 얼어붙은 미로\n",color:"gray",strikethrough:true}
execute unless entity @a[advancements={1_frozen/12_maze=true}] run data modify storage data tmp.reckoning_reset_tooltip append value {text:"• 얼어붙은 미로\n",color:"gray"}
data modify storage data tmp.reckoning_reset_tooltip append value ["",{text:"\n[ 취소선이 표시된 항목 ]",color:"green"},{text:"\n현재 보관소 효과 또는 발전과제로 유지됨",color:"gray"}]
