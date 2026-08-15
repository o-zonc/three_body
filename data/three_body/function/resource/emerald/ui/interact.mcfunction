# 에메랄드(emerald) resource interaction.
execute if score #emerald unlock matches 1.. run function three_body:resource/emerald/ui/info
execute unless score #emerald unlock matches 1.. run function three_body:resource/emerald/ui/locked
