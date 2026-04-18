scoreboard objectives add worm dummy
scoreboard objectives add worm.timer dummy
scoreboard players set #wormdelay worm 5

scoreboard players set #2 worm 2

scoreboard objectives add worm.horn used:goat_horn
scoreboard objectives add worm.last_horn dummy
scoreboard players operation @a worm.last_horn = @a worm.horn