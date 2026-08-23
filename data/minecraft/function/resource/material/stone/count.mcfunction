# Stone regeneration is intentionally event-based: one count per wood harvest.
execute if score #stone_remain generate matches 1.. run scoreboard players remove #stone_remain generate 1
execute if score #stone_remain generate matches ..0 run function resource/material/stone/place

