# 금(gold) resource interaction.
execute if score #gold unlock matches 1.. run function three_body:resource/gold/ui/info
execute unless score #gold unlock matches 1.. run function three_body:resource/gold/ui/locked
