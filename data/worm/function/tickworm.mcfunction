# Handles timer
scoreboard players operation #temp worm = @s worm.timer
scoreboard players operation #temp worm %= #wormdelay worm
scoreboard players add @s worm.timer 1
execute if score @s worm.timer matches ..-1 run return 0
# Only run every #wormdelay ticks
execute if score #temp worm matches 1.. run return 0

execute store result storage worm:macro i int 0.05 run scoreboard players get @s worm.timer
# Checking amount of points and if running out kill entity
execute store result score #i worm run data get storage worm:macro i
execute store result score #max worm run data get entity @s data.points
execute if score #i worm >= #max worm run return run kill @s 
# animate
function worm:animate with storage worm:macro
data modify entity @s start_interpolation set value -1