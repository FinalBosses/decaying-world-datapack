# check 16 blocks below execution location
scoreboard players set @s decay_hit 0
execute positioned ~ ~-1 ~ unless block ~ ~ ~ #minecraft:air run function dw:hit
execute unless score @s decay_hit matches 1 positioned ~ ~-2 ~ unless block ~ ~ ~ #minecraft:air run function dw:hit
execute unless score @s decay_hit matches 1 positioned ~ ~-3 ~ unless block ~ ~ ~ #minecraft:air run function dw:hit
execute unless score @s decay_hit matches 1 positioned ~ ~-4 ~ unless block ~ ~ ~ #minecraft:air run function dw:hit
execute unless score @s decay_hit matches 1 positioned ~ ~-5 ~ unless block ~ ~ ~ #minecraft:air run function dw:hit
execute unless score @s decay_hit matches 1 positioned ~ ~-6 ~ unless block ~ ~ ~ #minecraft:air run function dw:hit
execute unless score @s decay_hit matches 1 positioned ~ ~-7 ~ unless block ~ ~ ~ #minecraft:air run function dw:hit
execute unless score @s decay_hit matches 1 positioned ~ ~-8 ~ unless block ~ ~ ~ #minecraft:air run function dw:hit
execute unless score @s decay_hit matches 1 positioned ~ ~-9 ~ unless block ~ ~ ~ #minecraft:air run function dw:hit
execute unless score @s decay_hit matches 1 positioned ~ ~-10 ~ unless block ~ ~ ~ #minecraft:air run function dw:hit
execute unless score @s decay_hit matches 1 positioned ~ ~-11 ~ unless block ~ ~ ~ #minecraft:air run function dw:hit
execute unless score @s decay_hit matches 1 positioned ~ ~-12 ~ unless block ~ ~ ~ #minecraft:air run function dw:hit
execute unless score @s decay_hit matches 1 positioned ~ ~-13 ~ unless block ~ ~ ~ #minecraft:air run function dw:hit
execute unless score @s decay_hit matches 1 positioned ~ ~-14 ~ unless block ~ ~ ~ #minecraft:air run function dw:hit
execute unless score @s decay_hit matches 1 positioned ~ ~-15 ~ unless block ~ ~ ~ #minecraft:air run function dw:hit
execute unless score @s decay_hit matches 1 positioned ~ ~-16 ~ unless block ~ ~ ~ #minecraft:air run function dw:hit

# if no blocks found, try the next region below
#execute unless score @s decay_hit matches 1 positioned ~ ~-16 ~ run function dw:probe_down_air
