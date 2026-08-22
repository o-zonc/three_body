# 문명 정산의 [ 초기화되는 항목 ] 툴팁을 현재 보관소 보호 상태에 맞춰 구성한다.
data modify storage data tmp.reckoning_reset_tooltip set value [{text:"[ 문명 정산 시 초기화 ]\n",color:"red"}]

# 항상 초기화되는 항목. 공방 영구 이동기는 아래에서 별도로 표시한다.
data modify storage data tmp.reckoning_reset_tooltip append value {text:"• 기타 소지 아이템\n",color:"gray"}
data modify storage data tmp.reckoning_reset_tooltip append value {text:"• 일반 자원 및 자원 해금 상태\n",color:"gray"}

# 이미 구매한 공방 영구 이동기는 정보 100조각으로 공방 자체가 보존될 때 함께 유지한다.
execute if score #shop_mover unlock matches 1.. if score #information_bank meta matches 100.. if score #alchemy_workshop unlock matches 1.. run data modify storage data tmp.reckoning_reset_tooltip append value {text:"• 상점 이동기 영구 구매\n",color:"gray",strikethrough:true}
execute if score #shop_mover unlock matches 1.. unless score #information_bank meta matches 100.. run data modify storage data tmp.reckoning_reset_tooltip append value {text:"• 상점 이동기 영구 구매\n",color:"gray"}
execute if score #shop_mover unlock matches 1.. if score #information_bank meta matches 100.. unless score #alchemy_workshop unlock matches 1.. run data modify storage data tmp.reckoning_reset_tooltip append value {text:"• 상점 이동기 영구 구매\n",color:"gray"}
execute if score #alchemy_mover unlock matches 1.. if score #information_bank meta matches 100.. if score #alchemy_workshop unlock matches 1.. run data modify storage data tmp.reckoning_reset_tooltip append value {text:"• 연금술 공방 이동기 영구 구매\n",color:"gray",strikethrough:true}
execute if score #alchemy_mover unlock matches 1.. unless score #information_bank meta matches 100.. run data modify storage data tmp.reckoning_reset_tooltip append value {text:"• 연금술 공방 이동기 영구 구매\n",color:"gray"}
execute if score #alchemy_mover unlock matches 1.. if score #information_bank meta matches 100.. unless score #alchemy_workshop unlock matches 1.. run data modify storage data tmp.reckoning_reset_tooltip append value {text:"• 연금술 공방 이동기 영구 구매\n",color:"gray"}

# 자원 상점: 정보 10조각은 전체 1층 상점을, 시간 10조각은 나무 상점 진행만 유지한다.
execute if score #information_bank meta matches 10.. run data modify storage data tmp.reckoning_reset_tooltip append value {text:"• 나무 자원 상점 진행\n",color:"gray",strikethrough:true}
execute unless score #information_bank meta matches 10.. if score #time_bank meta matches 10.. run data modify storage data tmp.reckoning_reset_tooltip append value {text:"• 나무 자원 상점 진행\n",color:"gray",strikethrough:true}
execute unless score #information_bank meta matches 10.. unless score #time_bank meta matches 10.. run data modify storage data tmp.reckoning_reset_tooltip append value {text:"• 나무 자원 상점 진행\n",color:"gray"}
execute if score #information_bank meta matches 10.. run data modify storage data tmp.reckoning_reset_tooltip append value {text:"• 그 외 자원 상점 업그레이드\n",color:"gray",strikethrough:true}
execute unless score #information_bank meta matches 10.. run data modify storage data tmp.reckoning_reset_tooltip append value {text:"• 그 외 자원 상점 업그레이드\n",color:"gray"}

# 생산 업그레이드: 시간 10조각은 나무 재생만, 정보 50조각은 2층 생산만 유지한다.
execute if score #time_bank meta matches 10.. run data modify storage data tmp.reckoning_reset_tooltip append value {text:"• 나무 재생 업그레이드\n",color:"gray",strikethrough:true}
execute unless score #time_bank meta matches 10.. run data modify storage data tmp.reckoning_reset_tooltip append value {text:"• 나무 재생 업그레이드\n",color:"gray"}
data modify storage data tmp.reckoning_reset_tooltip append value {text:"• 기타 자원 재생·도구 업그레이드\n",color:"gray"}
execute if score #information_bank meta matches 50.. run data modify storage data tmp.reckoning_reset_tooltip append value {text:"• 2층 생산 업그레이드\n",color:"gray",strikethrough:true}
execute unless score #information_bank meta matches 50.. run data modify storage data tmp.reckoning_reset_tooltip append value {text:"• 2층 생산 업그레이드\n",color:"gray"}

data modify storage data tmp.reckoning_reset_tooltip append value {text:"• 메마른 유물 복원 단계\n",color:"gray"}

# 시간 보관소가 현재 문명 발전 단계를 그대로 재현할 수 있을 때만 취소선을 표시한다.
scoreboard players set #reckoning_age_preserved tmp 0
execute if score #overworld civilization_age matches 5 if score #time_bank meta matches 5.. run scoreboard players set #reckoning_age_preserved tmp 1
execute if score #overworld civilization_age matches 6 if score #time_bank meta matches 20.. run scoreboard players set #reckoning_age_preserved tmp 1
execute if score #overworld civilization_age matches 7 if score #time_bank meta matches 50.. run scoreboard players set #reckoning_age_preserved tmp 1
execute if score #overworld civilization_age matches 8.. if score #time_bank meta matches 100.. run scoreboard players set #reckoning_age_preserved tmp 1
execute if score #reckoning_age_preserved tmp matches 1 run data modify storage data tmp.reckoning_reset_tooltip append value {text:"• 문명 발전 단계\n",color:"gray",strikethrough:true}
execute unless score #reckoning_age_preserved tmp matches 1 run data modify storage data tmp.reckoning_reset_tooltip append value {text:"• 문명 발전 단계\n",color:"gray"}
data modify storage data tmp.reckoning_reset_tooltip append value {text:"• 시대 제어 장치\n",color:"gray"}

# 시설 및 장치
execute if score #information_bank meta matches 25.. run data modify storage data tmp.reckoning_reset_tooltip append value {text:"• 관측소\n",color:"gray",strikethrough:true}
execute unless score #information_bank meta matches 25.. run data modify storage data tmp.reckoning_reset_tooltip append value {text:"• 관측소\n",color:"gray"}
execute if score #information_bank meta matches 100.. run data modify storage data tmp.reckoning_reset_tooltip append value {text:"• 연금술 공방\n",color:"gray",strikethrough:true}
execute unless score #information_bank meta matches 100.. run data modify storage data tmp.reckoning_reset_tooltip append value {text:"• 연금술 공방\n",color:"gray"}
execute if score #time_bank meta matches 50.. run data modify storage data tmp.reckoning_reset_tooltip append value {text:"• 엘리베이터\n",color:"gray",strikethrough:true}
execute unless score #time_bank meta matches 50.. run data modify storage data tmp.reckoning_reset_tooltip append value {text:"• 엘리베이터\n",color:"gray"}
execute if score #information_bank meta matches 250.. run data modify storage data tmp.reckoning_reset_tooltip append value {text:"• 공장 건설·생산 단계\n",color:"gray",strikethrough:true}
execute unless score #information_bank meta matches 250.. run data modify storage data tmp.reckoning_reset_tooltip append value {text:"• 공장 건설·생산 단계\n",color:"gray"}
data modify storage data tmp.reckoning_reset_tooltip append value {text:"• 공장 가동·타이머 상태\n",color:"gray"}
execute if score #information_bank meta matches 500.. run data modify storage data tmp.reckoning_reset_tooltip append value {text:"• 입자가속기 발전 단계\n",color:"gray",strikethrough:true}
execute unless score #information_bank meta matches 500.. run data modify storage data tmp.reckoning_reset_tooltip append value {text:"• 입자가속기 발전 단계\n",color:"gray"}
data modify storage data tmp.reckoning_reset_tooltip append value {text:"• 입자가속기 실험·타이머 상태\n",color:"gray"}
data modify storage data tmp.reckoning_reset_tooltip append value {text:"• 외계 간섭·보호막 상태\n",color:"gray"}
execute if score #information_bank meta matches 1000.. run data modify storage data tmp.reckoning_reset_tooltip append value {text:"• 타임머신 발전 단계\n",color:"gray",strikethrough:true}
execute unless score #information_bank meta matches 1000.. run data modify storage data tmp.reckoning_reset_tooltip append value {text:"• 타임머신 발전 단계\n",color:"gray"}
data modify storage data tmp.reckoning_reset_tooltip append value {text:"• 여명 보너스 및 정산 상태\n",color:"gray"}

# 얼어붙은 차원: 시간 10조각은 다리만 유지한다.
data modify storage data tmp.reckoning_reset_tooltip append value {text:"• 얼어붙은 차원 상점·미로\n",color:"gray"}
execute if score #time_bank meta matches 10.. run data modify storage data tmp.reckoning_reset_tooltip append value {text:"• 얼어붙은 다리\n",color:"gray",strikethrough:true}
execute unless score #time_bank meta matches 10.. run data modify storage data tmp.reckoning_reset_tooltip append value {text:"• 얼어붙은 다리\n",color:"gray"}

data modify storage data tmp.reckoning_reset_tooltip append value {text:"\n취소선이 표시된 항목은 현재 보관소 효과로 유지됩니다.",color:"green"}
