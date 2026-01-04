# setup scoreboards
scoreboard objectives add decay_rngx dummy
scoreboard objectives add decay_rngz dummy
scoreboard objectives add decay_py dummy
scoreboard objectives add decay_depth dummy
scoreboard objectives add decay_hit dummy
scoreboard objectives add decay_cave dummy

# nice startup message
tellraw @a ["",{text:"Welcome to "},{text:"Decaying World ",bold:true,color:"green"},{text:"(v2-1.16.4) ",italic:true,color:"dark_gray"},{text:"by ",italic:true},{text:"SilentAssassin7",italic:true,color:"gold",click_event:{action:"open_url",url:"https://www.youtube.com/@silent_assassins"},hover_event:{action:"show_text",value:[{text:"Check out the channel"}]}},{text:"\n"},{text:"Click one of the following modes to start:",bold:true},{text:"\n"},{text:"[Extra Low] ",color:"aqua",click_event:{action:"run_command",command:"/function dw:start_xlow"},hover_event:{action:"show_text",value:[{text:"dw:start_xlow"}]}},{text:"[Low] ",color:"green",click_event:{action:"run_command",command:"/function dw:start_low"},hover_event:{action:"show_text",value:[{text:"dw:start_low"}]}},{text:"[Medium] ",color:"yellow",click_event:{action:"run_command",command:"/function dw:start_medium"},hover_event:{action:"show_text",value:[{text:"dw:start_medium"}]}},{text:"[High]",color:"red",click_event:{action:"run_command",command:"/function dw:start_high"},hover_event:{action:"show_text",value:[{text:"dw:start_high"}]}}]
