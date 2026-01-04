# count testpoints above the player to check if they are under cover
scoreboard players set @s decay_cave 0
execute if block ~ ~10 ~ air run scoreboard players add @s decay_cave 1
execute if block ~ ~20 ~ air run scoreboard players add @s decay_cave 1
execute if block ~ ~30 ~ air run scoreboard players add @s decay_cave 1
execute if block ~ ~40 ~ air run scoreboard players add @s decay_cave 1

# test player y coordinates
execute store result score @s decay_py run data get entity @s Pos[1] 1
execute if score @s decay_py matches ..10 run scoreboard players set @s decay_cave 0
