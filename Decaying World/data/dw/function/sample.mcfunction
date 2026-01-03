# choose random x and z offset
execute store result score @s decay_rngx run random value -64..64
execute store result score @s decay_rngz run random value -64..64

# add player position to get absolute coordinates
scoreboard players operation @s decay_rngx += @p decay_rngx
scoreboard players operation @s decay_rngz += @p decay_rngz

# subtract 24 to center around the player
#scoreboard players remove @s decay_rngx 24
#scoreboard players remove @s decay_rngz 24

# move marker to those coordinates
execute store result entity @s Pos[0] double 1 run scoreboard players get @s decay_rngx
execute store result entity @s Pos[2] double 1 run scoreboard players get @s decay_rngz

# find top-most block at those coordinates (and maybe break it)
execute at @s positioned over motion_blocking unless block ~ ~-1 ~ #dw:durable run setblock ~ ~-0.5 ~ air replace
