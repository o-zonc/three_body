# 극야 발전과제 보상: 자원 상점 1층/2층의 물질 자원 비용 50% 감소
# 다른 할인과 중첩하지 않고 현재 할인율이 50%보다 낮을 때만 갱신한다.
scoreboard players set #shop_cost_advancement_reward var 1
execute unless score #shop_cost_discount_percent var matches 50.. run scoreboard players set #shop_cost_discount_percent var 50
