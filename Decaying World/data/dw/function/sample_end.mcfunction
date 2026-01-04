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

# find top-most block at those coordinates (and try to break it).
execute at @s positioned over motion_blocking unless block ~ ~-1 ~ #dw:durable run setblock ~ ~-0.5 ~ air replace

# return agents to sanctuary
function dw:park_agents
