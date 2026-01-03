execute as @e[type=minecraft:armor_stand,nbt={Invulnerable:1b}] run data modify entity @s Motion set value [0.0d, -10.0d, 0.0d]
scoreboard players add @e[type=minecraft:armor_stand,nbt={Invulnerable:1b}] dwcount 1
execute as @e[type=minecraft:armor_stand,nbt={Invulnerable:1b},scores={dwcount=1}] at @s run tp @s ~ 300 ~
#
execute as @e[type=minecraft:armor_stand,nbt={Invulnerable:1b},scores={dwcount=1}] at @s run spreadplayers ~ ~ 0 50 false @s
#
execute as @e[type=minecraft:armor_stand,nbt={Invulnerable:1b},scores={dwcount=1}] at @s run tp @s ~ 254 ~
#
execute as @e[type=minecraft:armor_stand,nbt={Invulnerable:1b},limit=6,scores={dwcount=1},sort=random] run execute at @r run summon minecraft:armor_stand ~ 1000 ~ {Invulnerable:1b,Silent:1b,PersistenceRequired:1b,Invisible:1b}
execute as @e[type=minecraft:armor_stand,nbt={Invulnerable:1b},limit=6,scores={dwcount=1},sort=random] run execute at @r run summon minecraft:armor_stand ~ 1000 ~ {Invulnerable:1b,Silent:1b,PersistenceRequired:1b,Invisible:1b}
#
execute as @e[type=minecraft:armor_stand,nbt={Invulnerable:1b}] run execute at @s run execute unless block ~ ~-0.1 ~ air run execute unless block ~ ~-0.1 ~ bedrock run execute unless block ~ ~-0.1 ~ end_portal_frame run execute unless block ~ ~-0.1 ~ end_portal run execute unless block ~ ~-0.1 ~ obsidian run scoreboard players set @s dwdecay 1
execute as @e[type=minecraft:armor_stand,nbt={Invulnerable:1b},scores={dwdecay=1}] at @s run setblock ~ ~-0.1 ~ minecraft:air
execute as @e[type=minecraft:armor_stand,nbt={Invulnerable:1b},scores={dwdecay=1}] run kill @s
execute as @e[type=minecraft:armor_stand,nbt={Invulnerable:1b}] run execute at @s run execute if block ~ ~-0.1 ~ bedrock run tp kill @s
execute as @e[type=minecraft:armor_stand,nbt={Invulnerable:1b}] run execute at @s run execute if block ~ ~-0.1 ~ end_portal_frame run tp kill @s
execute as @e[type=minecraft:armor_stand,nbt={Invulnerable:1b}] run execute at @s run execute if block ~ ~-0.1 ~ end_portal run tp kill @s
execute as @e[type=minecraft:armor_stand,nbt={Invulnerable:1b}] run execute at @s run execute if block ~ ~-0.1 ~ obsidian run kill @s
scoreboard players set @e[type=minecraft:armor_stand,nbt={Invulnerable:1b},scores={dwcount=3..}] dwcount 2
