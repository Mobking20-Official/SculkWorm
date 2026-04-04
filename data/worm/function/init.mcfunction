# Basic initialization for block displays
data modify entity @s Rotation set from entity @p Rotation
function worm:movetoground
tag @s add WormStart
data merge entity @s {block_state:{Name:sculk_shrieker}}
schedule function worm:initworms 2t

# Create list of points by summoning markers
data modify entity @s data.points set value []
tp @s ^ ^-1 ^-3
execute positioned 0 0 0 positioned ^ ^-1 ^-3 rotated as @p summon marker run function worm:waypoint
scoreboard players set #angle worm -90
execute positioned 0 0 0 positioned ^ ^ ^-3 rotated as @p summon marker run function worm:waypoint
scoreboard players set #angle worm -45
execute positioned 0 0 0 positioned ^ ^2.12 ^-2.12 rotated as @p summon marker run function worm:waypoint
scoreboard players set #angle worm 0
execute positioned 0 0 0 positioned ^ ^3 ^ rotated as @p summon marker run function worm:waypoint
scoreboard players set #angle worm 45
execute positioned 0 0 0 positioned ^ ^2.12 ^2.12 rotated as @p summon marker run function worm:waypoint
scoreboard players set #angle worm 90
execute positioned 0 0 0 positioned ^ ^ ^3 rotated as @p summon marker run function worm:waypoint

scoreboard players set @s worm.timer 0