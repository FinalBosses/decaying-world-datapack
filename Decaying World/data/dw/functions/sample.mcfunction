# choose random x and z offset
execute store result score @s decay_rngx run data get entity @e[tag=random_pos,limit=1,sort=random] Pos[0] 1
execute store result score @s decay_rngz run data get entity @e[tag=random_pos,limit=1,sort=random] Pos[2] 1

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
execute at @s run function dw:column

