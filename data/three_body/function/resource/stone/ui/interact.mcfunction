# 돌(stone) resource interaction.
execute if score #stone unlock matches 1.. run function three_body:resource/stone/ui/info
execute unless score #stone unlock matches 1.. run function three_body:resource/stone/ui/locked
