data remove storage data tmp.dried_relic
execute store result storage data tmp.dried_relic_query.lvl int 1 run scoreboard players get #dried_relic_level upgrade
function dried/relic/read with storage data tmp.dried_relic_query
execute store result score #dried_relic_interval tmp run data get storage data tmp.dried_relic.interval
execute store result score #dried_relic_amount tmp run data get storage data tmp.dried_relic.amount
