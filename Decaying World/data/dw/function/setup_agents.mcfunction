# move marker to stored, logical coordinates
execute store result entity @s Pos[0] double 1 run scoreboard players get @s decay_rngx
execute store result entity @s Pos[2] double 1 run scoreboard players get @s decay_rngz
