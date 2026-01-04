# check 16 blocks below execution location
scoreboard players set @s decay_hit 0
execute if block ~ ~-1 ~ #minecraft:air run function dw:hit
execute unless score @s decay_hit matches 1 positioned ~ ~-1 ~ if block ~ ~-1 ~ #minecraft:air run function dw:hit
execute unless score @s decay_hit matches 1 positioned ~ ~-2 ~ if block ~ ~-1 ~ #minecraft:air run function dw:hit
execute unless score @s decay_hit matches 1 positioned ~ ~-3 ~ if block ~ ~-1 ~ #minecraft:air run function dw:hit
execute unless score @s decay_hit matches 1 positioned ~ ~-4 ~ if block ~ ~-1 ~ #minecraft:air run function dw:hit
execute unless score @s decay_hit matches 1 positioned ~ ~-5 ~ if block ~ ~-1 ~ #minecraft:air run function dw:hit
execute unless score @s decay_hit matches 1 positioned ~ ~-6 ~ if block ~ ~-1 ~ #minecraft:air run function dw:hit
execute unless score @s decay_hit matches 1 positioned ~ ~-7 ~ if block ~ ~-1 ~ #minecraft:air run function dw:hit
execute unless score @s decay_hit matches 1 positioned ~ ~-8 ~ if block ~ ~-1 ~ #minecraft:air run function dw:hit
execute unless score @s decay_hit matches 1 positioned ~ ~-9 ~ if block ~ ~-1 ~ #minecraft:air run function dw:hit
execute unless score @s decay_hit matches 1 positioned ~ ~-10 ~ if block ~ ~-1 ~ #minecraft:air run function dw:hit
execute unless score @s decay_hit matches 1 positioned ~ ~-11 ~ if block ~ ~-1 ~ #minecraft:air run function dw:hit
execute unless score @s decay_hit matches 1 positioned ~ ~-12 ~ if block ~ ~-1 ~ #minecraft:air run function dw:hit
execute unless score @s decay_hit matches 1 positioned ~ ~-13 ~ if block ~ ~-1 ~ #minecraft:air run function dw:hit
execute unless score @s decay_hit matches 1 positioned ~ ~-14 ~ if block ~ ~-1 ~ #minecraft:air run function dw:hit
execute unless score @s decay_hit matches 1 positioned ~ ~-15 ~ if block ~ ~-1 ~ #minecraft:air run function dw:hit

# if no blocks found, try the next region below
execute unless score @s decay_hit matches 1 positioned ~ ~-16 ~ run function dw:probe_down_solid
