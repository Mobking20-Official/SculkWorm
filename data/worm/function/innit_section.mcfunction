$data merge entity @s {block_state:{Name:$(block)},transformation:{scale:[$(scale)f,$(scale)f,$(scale)f],translation:[0f,-10f,0f]},start_interpolation:-1}
$scoreboard players set @s worm.timer $(timer)
scoreboard players operation @s worm.timer *= #wormdelay worm
scoreboard players operation @s worm.timer /= #2 worm
tp @s @n[tag=WormStart]
data modify entity @s data.points set from entity @n[tag=WormStart] data.points
tag @s add WormStart
