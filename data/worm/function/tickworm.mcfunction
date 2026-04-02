scoreboard players operation #temp worm = @s worm.timer
scoreboard players operation #temp worm %= #wormdelay worm
scoreboard players add @s worm.timer 1
execute if score #temp worm matches 1.. run return 0
execute store result storage worm:macro i int 0.05 run scoreboard players get @s worm.timer
function worm:animate with storage worm:macro
data modify entity @s start_interpolation set value -1