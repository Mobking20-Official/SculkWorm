# Initialize block displays that been summoned
execute store result storage worm:macro temp.delay int 1 run scoreboard players get #wormdelay worm
execute as @e[tag=WormStart] at @s run function worm:initworm with storage worm:macro temp