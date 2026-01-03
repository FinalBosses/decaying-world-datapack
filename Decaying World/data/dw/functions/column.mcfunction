scoreboard players set @s decay_depth 0
scoreboard players set @s decay_hit 0

# go down checking 16 block sections at a time to find and decay the top-block
# note that we start at 128 (height of clouds. might be changed later)
execute positioned ~ 129 ~ run function dw:probe

