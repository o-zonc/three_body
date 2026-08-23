# 인트로 진행
execute if score #done intro matches 0 run function story/intro/00_init

# 인트로 스킵 트리거
execute as @a[scores={intro_skip=1}] run function story/intro/skip
scoreboard players reset @a[scores={intro_skip=1}] intro_skip
scoreboard players enable @a intro_skip

# 튜토리얼 트리거
execute as @a[scores={tutorial=1}] run function story/tutorial/skip
scoreboard players reset @a[scores={tutorial=1}] tutorial
scoreboard players enable @a tutorial
