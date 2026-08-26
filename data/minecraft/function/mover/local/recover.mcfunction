# 오버월드 전용 이동기는 다른 차원으로 반출할 수 없다.
# 재지급 여부는 restore에서 시설 해금·구매 기록으로 판단한다.
clear @a minecraft:cyan_dye[minecraft:custom_data~{altar_move:1b}]
clear @a minecraft:emerald[minecraft:custom_data~{shop_move:1b}]
clear @a minecraft:purple_dye[minecraft:custom_data~{alchemy_move:1b}]

# 얼어붙은 세계 난세기 환경 효과는 차원을 이동하면 제거합니다.
effect clear @a minecraft:mining_fatigue
effect clear @a minecraft:haste
