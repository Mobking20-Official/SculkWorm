# Basic initialization for block displays
data modify entity @s Rotation set from entity @p Rotation
function worm:movetoground
tag @s add WormStart
data merge entity @s {block_state:{Name:sculk_shrieker},transformation:{scale:[4f,4f,4f]}}
schedule function worm:initworms 2t

# Create list of points by summoning markers
data modify entity @s data.points set value []
tp @s ^ ^ ^-9
execute positioned 0 0 0 positioned ^ ^-3 ^-9 rotated as @p summon marker run function worm:waypoint
scoreboard players set #angle worm -90
execute positioned 0 0 0 positioned ^ ^ ^-9 rotated as @p summon marker run function worm:waypoint
scoreboard players set #angle worm -72
execute positioned 0 0 0 positioned ^ ^2.8 ^-8.6 rotated as @p summon marker run function worm:waypoint
scoreboard players set #angle worm -54
execute positioned 0 0 0 positioned ^ ^5.3 ^-7.3 rotated as @p summon marker run function worm:waypoint
scoreboard players set #angle worm -36
execute positioned 0 0 0 positioned ^ ^7.3 ^-5.3 rotated as @p summon marker run function worm:waypoint
scoreboard players set #angle worm -18
execute positioned 0 0 0 positioned ^ ^8.6 ^-2.8 rotated as @p summon marker run function worm:waypoint
scoreboard players set #angle worm 0
execute positioned 0 0 0 positioned ^ ^9 ^ rotated as @p summon marker run function worm:waypoint
scoreboard players set #angle worm 18
execute positioned 0 0 0 positioned ^ ^8.6 ^2.8 rotated as @p summon marker run function worm:waypoint
scoreboard players set #angle worm 36
execute positioned 0 0 0 positioned ^ ^7.3 ^5.3 rotated as @p summon marker run function worm:waypoint
scoreboard players set #angle worm 54
execute positioned 0 0 0 positioned ^ ^5.3 ^7.3 rotated as @p summon marker run function worm:waypoint
scoreboard players set #angle worm 72
execute positioned 0 0 0 positioned ^ ^2.8 ^8.6 rotated as @p summon marker run function worm:waypoint
scoreboard players set #angle worm 90
execute positioned 0 0 0 positioned ^ ^ ^9 rotated as @p summon marker run function worm:waypoint

scoreboard players set @s worm.timer 0

execute summon block_display run function worm:innit_section {timer:-20,block:sculk_catalyst,scale:3}
execute summon block_display run function worm:innit_section {timer:-40,block:sculk,scale:2}
execute summon block_display run function worm:innit_section {timer:-60,block:sculk,scale:2}
execute summon block_display run function worm:innit_section {timer:-80,block:sculk,scale:2}
execute summon block_display run function worm:innit_section {timer:-100,block:sculk_sensor,scale:1}