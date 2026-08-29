execute if score #disable_item_reissue var matches 1 run return 0
# 인벤토리에 도구가 없다면 현재 강화 단계의 커스텀 도구를 직접 생성해 지급합니다.
# 구형 컨테이너 슬롯 복사는 컴포넌트가 없는 바닐라 막대기를 지급할 수 있어 사용하지 않습니다.
execute as @a[tag=player,gamemode=adventure] \
  unless items entity @s container.* *[custom_data~{tool:{}}] \
  unless items entity @s weapon.offhand *[custom_data~{tool:{}}] \
  unless items entity @s player.cursor *[custom_data~{tool:{}}] \
  unless items entity @s player.crafting.* *[custom_data~{tool:{}}] \
    at @s run function tool/give_current
