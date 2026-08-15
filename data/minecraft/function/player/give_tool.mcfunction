execute if score #disable_item_reissue var matches 1 run return 0
# 인벤토리에 도구가 없다면 도구 지급
execute as @a[tag=player,gamemode=adventure] \
  unless items entity @s container.* *[custom_data~{tool:{}}] \
  unless items entity @s weapon.offhand *[custom_data~{tool:{}}] \
  unless items entity @s player.cursor *[custom_data~{tool:{}}] \
  unless items entity @s player.crafting.* *[custom_data~{tool:{}}] \
    run item replace entity @s weapon.mainhand from block 0 8 1 container.0