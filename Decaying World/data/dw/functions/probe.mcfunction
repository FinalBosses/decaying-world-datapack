# basically a wrapper for dw:refine

scoreboard players add @s decay_depth 1
execute unless score @s decay_depth matches 9.. run function dw:refine
