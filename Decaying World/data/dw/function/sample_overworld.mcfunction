# choose random x and z offset
execute unless score @p decay_cave matches ..3 store result score @s decay_rngx run random value -64..64
execute unless score @p decay_cave matches ..3 store result score @s decay_rngz run random value -64..64
# a little tighter if in a cave
execute if score @p decay_cave matches ..3 store result score @s decay_rngx run random value -48..48
execute if score @p decay_cave matches ..3 store result score @s decay_rngz run random value -48..48

# add player position to get absolute coordinates
scoreboard players operation @s decay_rngx += @p decay_rngx
scoreboard players operation @s decay_rngz += @p decay_rngz

# subtract 24 to center around the player
#scoreboard players remove @s decay_rngx 24
#scoreboard players remove @s decay_rngz 24

# move marker to those coordinates
function dw:setup_agents


# if outside:
# find top-most block at those coordinates (and try to break it).
execute unless score @p decay_cave matches ..3 at @s positioned over motion_blocking unless block ~ ~-1 ~ #dw:durable run setblock ~ ~-0.5 ~ air replace


# if underground (in a cave):
# go to player's y-level.
execute if score @p decay_cave matches ..3 run scoreboard players set @s decay_py 4
execute if score @p decay_cave matches ..3 run scoreboard players operation @s decay_py += @p decay_py
execute if score @p decay_cave matches ..3 store result entity @s Pos[1] double 1 run scoreboard players get @s decay_py

# choose weather to decay up or down.
execute if score @p decay_cave matches ..3 store result score @s decay_probe_dir run random value 0..1

# if it's already in a block, find and destroy the first block touching air.
# otherwise, find and destroy the first block that isn't air.
execute if score @p decay_cave matches ..3 run scoreboard players set @s decay_probe_depth 1
execute if score @p decay_cave matches ..3 at @s if block ~ ~ ~ #minecraft:air run scoreboard players set @s decay_probe_mode 0
execute if score @p decay_cave matches ..3 at @s unless block ~ ~ ~ #minecraft:air run scoreboard players set @s decay_probe_mode 1

# return agents to sanctuary
function dw:park_agents
