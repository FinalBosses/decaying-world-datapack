# check 16 blocks below execution location
execute unless block ~ ~-1 ~ #dw:air run function dw:hit
execute unless score @s decay_hit matches 1 positioned ~ ~-1 ~ unless block ~ ~-1 ~ #dw:air run function dw:hit
execute unless score @s decay_hit matches 1 positioned ~ ~-2 ~ unless block ~ ~-1 ~ #dw:air run function dw:hit
execute unless score @s decay_hit matches 1 positioned ~ ~-3 ~ unless block ~ ~-1 ~ #dw:air run function dw:hit
execute unless score @s decay_hit matches 1 positioned ~ ~-4 ~ unless block ~ ~-1 ~ #dw:air run function dw:hit
execute unless score @s decay_hit matches 1 positioned ~ ~-5 ~ unless block ~ ~-1 ~ #dw:air run function dw:hit
execute unless score @s decay_hit matches 1 positioned ~ ~-6 ~ unless block ~ ~-1 ~ #dw:air run function dw:hit
execute unless score @s decay_hit matches 1 positioned ~ ~-7 ~ unless block ~ ~-1 ~ #dw:air run function dw:hit
execute unless score @s decay_hit matches 1 positioned ~ ~-8 ~ unless block ~ ~-1 ~ #dw:air run function dw:hit
execute unless score @s decay_hit matches 1 positioned ~ ~-9 ~ unless block ~ ~-1 ~ #dw:air run function dw:hit
execute unless score @s decay_hit matches 1 positioned ~ ~-10 ~ unless block ~ ~-1 ~ #dw:air run function dw:hit
execute unless score @s decay_hit matches 1 positioned ~ ~-11 ~ unless block ~ ~-1 ~ #dw:air run function dw:hit
execute unless score @s decay_hit matches 1 positioned ~ ~-12 ~ unless block ~ ~-1 ~ #dw:air run function dw:hit
execute unless score @s decay_hit matches 1 positioned ~ ~-13 ~ unless block ~ ~-1 ~ #dw:air run function dw:hit
execute unless score @s decay_hit matches 1 positioned ~ ~-14 ~ unless block ~ ~-1 ~ #dw:air run function dw:hit
execute unless score @s decay_hit matches 1 positioned ~ ~-15 ~ unless block ~ ~-1 ~ #dw:air run function dw:hit

# if no blocks found, try the next region below
execute unless score @s decay_hit matches 1 positioned ~ ~-16 ~ run function dw:probe
