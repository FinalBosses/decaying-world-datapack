# repeat loop
schedule function dw:step 5t

# query each player's position and store it in a score
execute as @a store result score @s decay_rngx run data get entity @s Pos[0] 1
execute as @a store result score @s decay_rngz run data get entity @s Pos[2] 1

# check if player is in a cave
#execute as @a at @s run function dw:cave_detection
#execute as @a if score @s decay_cave matches 0..3 run say I'm in a cave
#execute as @a if score @s decay_cave matches 4 run say I'm outside

# for every marker, sample a random block near a random player (and destroy it)
#execute as @e[tag=decay_agent] run tp @s @a[limit=1,sort=random]
#execute as @e[tag=decay_agent] run function dw:sample

# query player dimensions
execute as @a at @s if dimension minecraft:overworld run scoreboard players set @s decay_dim 0
execute as @a at @s if dimension minecraft:the_nether run scoreboard players set @s decay_dim 1
execute as @a at @s if dimension minecraft:the_end run scoreboard players set @s decay_dim 2

# Overworld
execute as @e[tag=decay_agent,tag=dim_overworld] at @a[limit=1,sort=random,scores={decay_dim=0}] run function dw:sample_overworld

# Nether
execute as @e[tag=decay_agent,tag=dim_nether] at @a[limit=1,sort=random,scores={decay_dim=1}] run function dw:sample_nether

# End
execute as @e[tag=decay_agent,tag=dim_end] at @a[limit=1,sort=random,scores={decay_dim=2}] run function dw:sample_end
