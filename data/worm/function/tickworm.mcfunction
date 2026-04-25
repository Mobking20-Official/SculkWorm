# Handles timer
scoreboard players operation #temp worm = @s worm.timer
scoreboard players operation #temp worm %= #wormdelay worm
# Ground particles
scoreboard players operation #temp2 worm = @s worm.timer
scoreboard players operation #temp2 worm /= #wormdelay worm
data modify storage worm:macro temp.x set from entity @s data.points[1].translation[0]
data modify storage worm:macro temp.y set from entity @s data.points[1].translation[1]
data modify storage worm:macro temp.z set from entity @s data.points[1].translation[2]
execute if score #temp2 worm matches 0..1 run function worm:emerge_particles with storage worm:macro temp
data modify storage worm:macro temp.x set from entity @s data.points[11].translation[0]
data modify storage worm:macro temp.y set from entity @s data.points[11].translation[1]
data modify storage worm:macro temp.z set from entity @s data.points[11].translation[2]
execute if score #temp2 worm matches 11 run function worm:emerge_particles with storage worm:macro temp
# Damage
execute if score #temp2 worm matches 0 run function worm:damage_from {i:0}
execute if score #temp2 worm matches 1 run function worm:damage_from {i:1}
execute if score #temp2 worm matches 2 run function worm:damage_from {i:2}
execute if score #temp2 worm matches 3 run function worm:damage_from {i:3}
execute if score #temp2 worm matches 4 run function worm:damage_from {i:4}
execute if score #temp2 worm matches 5 run function worm:damage_from {i:5}
execute if score #temp2 worm matches 6 run function worm:damage_from {i:6}
execute if score #temp2 worm matches 7 run function worm:damage_from {i:7}
execute if score #temp2 worm matches 8 run function worm:damage_from {i:8}
execute if score #temp2 worm matches 9 run function worm:damage_from {i:9}
execute if score #temp2 worm matches 10 run function worm:damage_from {i:10}
execute if score #temp2 worm matches 11 run function worm:damage_from {i:11}
# updates timer
scoreboard players add @s worm.timer 1
execute if score @s worm.timer matches ..-1 run return 0
# Only run every #wormdelay ticks
execute if score #temp worm matches 1.. run return 0

scoreboard players operation #temp worm = @s worm.timer
scoreboard players operation #temp worm /= #wormdelay worm
execute store result storage worm:macro i int 1 run scoreboard players get #temp worm
# Checking amount of points and if running out kill entity
execute store result score #i worm run data get storage worm:macro i
execute store result score #max worm run data get entity @s data.points
execute if score #i worm >= #max worm run return run kill @s 
# animate
function worm:animate with storage worm:macro
data modify entity @s start_interpolation set value -1