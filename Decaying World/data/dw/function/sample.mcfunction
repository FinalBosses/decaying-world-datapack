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


# if outside:
# find top-most block at those coordinates (and try to break it).
execute unless score @p decay_cave matches ..3 at @s positioned over motion_blocking unless block ~ ~-1 ~ #dw:durable run setblock ~ ~-0.5 ~ air replace


# if underground (in a cave):
# go to player's y-level.
execute if score @p decay_cave matches ..3 run scoreboard players set @s decay_py 4
execute if score @p decay_cave matches ..3 run scoreboard players operation @s decay_py += @p decay_py
execute if score @p decay_cave matches ..3 store result entity @s Pos[1] double 1 run scoreboard players get @s decay_py

# choose weather to decay up or down.
execute if score @p decay_cave matches ..3 store result score @s decay_cave run random value 0..1

# if it's already in a block, find and destroy the first block touching air.
# otherwise, find and destroy the first block that isn't air.
execute if score @p decay_cave matches ..3 run scoreboard players set @s decay_depth 0
execute if score @p decay_cave matches ..3 if score @s decay_cave matches 0 at @s if block ~ ~ ~ #minecraft:air run function dw:probe_down_air
execute if score @p decay_cave matches ..3 if score @s decay_cave matches 0 at @s unless block ~ ~ ~ #minecraft:air run function dw:probe_down_solid
execute if score @p decay_cave matches ..3 if score @s decay_cave matches 1 at @s if block ~ ~ ~ #minecraft:air run function dw:probe_up_air
execute if score @p decay_cave matches ..3 if score @s decay_cave matches 1 at @s unless block ~ ~ ~ #minecraft:air run function dw:probe_up_solid
