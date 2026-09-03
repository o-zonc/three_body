execute store result score #color_event_sample tmp run random value 36000..72000
scoreboard players add #color_sample_count tmp 1
execute if score #color_event_sample tmp < #color_sample_min tmp run scoreboard players operation #color_sample_min tmp = #color_event_sample tmp
execute if score #color_event_sample tmp > #color_sample_max tmp run scoreboard players operation #color_sample_max tmp = #color_event_sample tmp
execute if score #color_sample_count tmp matches 1 if score #color_event_sample tmp = #color_sample_first tmp run scoreboard players set #color_sample_varies tmp 1
