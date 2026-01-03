# query each player's position and store it in a score
execute as @a store result score @s decay_rngx run data get entity @s Pos[0] 1
execute as @a store result score @s decay_rngz run data get entity @s Pos[2] 1

# for every marker, sample a random block near a random player (and destroy it)
execute as @e[tag=decay_agent] run tp @s @a[limit=1,sort=random]
execute as @e[tag=decay_agent] run function dw:sample

# repeat loop
schedule function dw:step 5t
