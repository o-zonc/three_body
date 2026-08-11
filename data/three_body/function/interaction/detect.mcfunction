# 우클릭
execute as @e[type=interaction] if data entity @s interaction run function three_body:interaction/right

# 좌클릭
execute as @e[type=interaction] if data entity @s attack run function three_body:interaction/left
