# basically a wrapper for dw:refine_down_solid.
# each cycle checks 16 blocks.
scoreboard players add @s decay_depth 1
execute unless score @s decay_depth matches 5.. run function dw:refine_down_solid
