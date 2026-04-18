# create point data with translations/rotations
data modify storage worm:macro temp set value {rotation:[1f, 0f, 0f, 1f]}
data modify storage worm:macro temp.translation set from entity @s Pos
data modify storage worm:macro temp.rotation[0] set from storage worm:macro axis.x
data modify storage worm:macro temp.rotation[2] set from storage worm:macro axis.z
execute store result storage worm:macro temp.rotation[3] float 0.01 run scoreboard players get #angle worm
# Appending the point data
data modify entity @n[tag=WormStart] data.points append from storage worm:macro temp
# Kill temp marker
kill @s