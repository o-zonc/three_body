data remove storage data tmp.tool.next
scoreboard players operation #tool_next tmp = #tool upgrade
scoreboard players add #tool_next tmp 1
execute store result storage data tmp.tool.next_query.lvl int 1 run scoreboard players get #tool_next tmp
function tool/read_next with storage data tmp.tool.next_query
