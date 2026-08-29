execute in dried run data modify block -8 62 -10 name set value "no_sulfur"
execute in dried run setblock -8 61 -10 redstone_block
execute in dried run setblock -8 61 -10 air

# 유리병 아이템 디스플레이가 있는 청크를 불러온 뒤 확실히 제거합니다.
# 기존에 강제 로드된 청크라면 그 상태는 유지합니다.
execute in dried store success score #sulfur_forceload_added tmp run forceload add -20 0
execute in dried run kill @e[type=item_display]
execute if score #sulfur_forceload_added tmp matches 1 in dried run forceload remove -20 0
