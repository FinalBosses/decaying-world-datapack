# repeat every tick
schedule function dw:probe 1t

# increment probe depth of all agents.
scoreboard players add @e[tag=decay_agent,scores={decay_probe_depth=1..5}] decay_probe_depth 1

# abort probing if the depth limit is reached.
execute as @e[tag=decay_agent] unless score @s decay_probe_depth matches 0..5 run scoreboard players set @s decay_probe_depth 0

# depending on depth, direction, and mode, continue to refine probing with the corresponding offset.
execute as @e[tag=decay_agent,scores={decay_probe_depth=2,decay_probe_dir=0,decay_probe_mode=0}] at @s run function dw:refine_down_air
execute as @e[tag=decay_agent,scores={decay_probe_depth=2,decay_probe_dir=1,decay_probe_mode=0}] at @s run function dw:refine_up_air
execute as @e[tag=decay_agent,scores={decay_probe_depth=2,decay_probe_dir=0,decay_probe_mode=1}] at @s run function dw:refine_down_solid
execute as @e[tag=decay_agent,scores={decay_probe_depth=2,decay_probe_dir=1,decay_probe_mode=1}] at @s run function dw:refine_up_solid

execute as @e[tag=decay_agent,scores={decay_probe_depth=3,decay_probe_dir=0,decay_probe_mode=0}] at @s positioned ~ ~-16 ~ run function dw:refine_down_air
execute as @e[tag=decay_agent,scores={decay_probe_depth=3,decay_probe_dir=1,decay_probe_mode=0}] at @s positioned ~ ~16 ~ run function dw:refine_up_air
execute as @e[tag=decay_agent,scores={decay_probe_depth=3,decay_probe_dir=0,decay_probe_mode=1}] at @s positioned ~ ~-16 ~ run function dw:refine_down_solid
execute as @e[tag=decay_agent,scores={decay_probe_depth=3,decay_probe_dir=1,decay_probe_mode=1}] at @s positioned ~ ~16 ~ run function dw:refine_up_solid

execute as @e[tag=decay_agent,scores={decay_probe_depth=4,decay_probe_dir=0,decay_probe_mode=0}] at @s positioned ~ ~-32 ~ run function dw:refine_down_air
execute as @e[tag=decay_agent,scores={decay_probe_depth=4,decay_probe_dir=1,decay_probe_mode=0}] at @s positioned ~ ~32 ~ run function dw:refine_up_air
execute as @e[tag=decay_agent,scores={decay_probe_depth=4,decay_probe_dir=0,decay_probe_mode=1}] at @s positioned ~ ~-32 ~ run function dw:refine_down_solid
execute as @e[tag=decay_agent,scores={decay_probe_depth=4,decay_probe_dir=1,decay_probe_mode=1}] at @s positioned ~ ~32 ~ run function dw:refine_up_solid

execute as @e[tag=decay_agent,scores={decay_probe_depth=5,decay_probe_dir=0,decay_probe_mode=0}] at @s positioned ~ ~-48 ~ run function dw:refine_down_air
execute as @e[tag=decay_agent,scores={decay_probe_depth=5,decay_probe_dir=1,decay_probe_mode=0}] at @s positioned ~ ~48 ~ run function dw:refine_up_air
execute as @e[tag=decay_agent,scores={decay_probe_depth=5,decay_probe_dir=0,decay_probe_mode=1}] at @s positioned ~ ~-48 ~ run function dw:refine_down_solid
execute as @e[tag=decay_agent,scores={decay_probe_depth=5,decay_probe_dir=1,decay_probe_mode=1}] at @s positioned ~ ~48 ~ run function dw:refine_up_solid

#execute as @e[tag=decay_agent,scores={decay_probe_depth=5,decay_probe_dir=0,decay_probe_mode=0}] at @s positioned ~ ~-64 ~ run function dw:refine_down_air
#execute as @e[tag=decay_agent,scores={decay_probe_depth=5,decay_probe_dir=1,decay_probe_mode=0}] at @s positioned ~ ~64 ~ run function dw:refine_up_air
#execute as @e[tag=decay_agent,scores={decay_probe_depth=5,decay_probe_dir=0,decay_probe_mode=1}] at @s positioned ~ ~-64 ~ run function dw:refine_down_solid
#execute as @e[tag=decay_agent,scores={decay_probe_depth=5,decay_probe_dir=1,decay_probe_mode=1}] at @s positioned ~ ~64 ~ run function dw:refine_up_solid
