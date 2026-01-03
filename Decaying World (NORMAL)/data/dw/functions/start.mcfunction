execute at @r run summon minecraft:armor_stand ~ 1000 ~ {Invulnerable:1b,Silent:1b,PersistenceRequired:1b,Invisible:1b}
scoreboard objectives add dwcount dummy
scoreboard objectives add dwdecay dummy
tellraw @a ["",{"text":"This datapack was made by ","color":"gold"},{"text":"SilentAssassin7","bold":true,"underlined":true,"color":"gold","clickEvent":{"action":"open_url","value":"http://home.silentassassins.net"},"hoverEvent":{"action":"show_text","contents":[{"text":"Go to the Silent Assassins website","color":"white"}]}}]
