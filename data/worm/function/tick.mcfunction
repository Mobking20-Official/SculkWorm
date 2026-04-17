execute as @e[type=block_display,tag=!WormStart] at @s run function worm:tickworm

execute as @a[nbt={SelectedItem:{components:{"minecraft:item_name":"Horn of Madness"}}}] if score @s worm.last_horn < @s worm.horn at @s run function worm:attack
scoreboard players operation @a worm.last_horn = @a worm.horn
