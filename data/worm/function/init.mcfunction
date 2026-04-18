# Basic initialization for block displays
data modify entity @s Rotation set from entity @p Rotation
tag @s add WormStart
data merge entity @s {block_state:{Name:sculk_shrieker},transformation:{scale:[4f,4f,4f],translation:[0f,-10f,0f]},start_interpolation:-1}
schedule function worm:initworms 2t

# Create list of points by summoning markers
data modify entity @s data.points set value []
tp @s @p
function worm:movetoground
execute positioned 0 0 0 positioned ^1 ^ ^ summon marker run function worm:axis_point
data modify entity @s Rotation set value [0f,0f]
scoreboard players set #angle worm 10000
execute positioned 0 0 0 positioned ^ ^-3 ^-9 summon marker run function worm:waypoint
scoreboard players set #angle worm 10000
execute positioned 0 0 0 positioned ^ ^ ^-9 summon marker run function worm:waypoint
scoreboard players set #angle worm 2000
execute positioned 0 0 0 positioned ^ ^2.8 ^-8.6 summon marker run function worm:waypoint
scoreboard players set #angle worm 900
execute positioned 0 0 0 positioned ^ ^5.3 ^-7.3 summon marker run function worm:waypoint
scoreboard players set #angle worm 600
execute positioned 0 0 0 positioned ^ ^7.3 ^-5.3 summon marker run function worm:waypoint
scoreboard players set #angle worm 300
execute positioned 0 0 0 positioned ^ ^8.6 ^-2.8 summon marker run function worm:waypoint
scoreboard players set #angle worm 100
execute positioned 0 0 0 positioned ^ ^9 ^ summon marker run function worm:waypoint
scoreboard players set #angle worm 70
execute positioned 0 0 0 positioned ^ ^8.6 ^2.8 summon marker run function worm:waypoint
scoreboard players set #angle worm 50
execute positioned 0 0 0 positioned ^ ^7.3 ^5.3 summon marker run function worm:waypoint
scoreboard players set #angle worm 36
execute positioned 0 0 0 positioned ^ ^5.3 ^7.3 summon marker run function worm:waypoint
scoreboard players set #angle worm 18
execute positioned 0 0 0 positioned ^ ^2.8 ^8.6 summon marker run function worm:waypoint
scoreboard players set #angle worm 0
execute positioned 0 0 0 positioned ^ ^ ^9 summon marker run function worm:waypoint
scoreboard players set #angle worm 0
execute positioned 0 0 0 positioned ^ ^-5 ^9 summon marker run function worm:waypoint

scoreboard players set @s worm.timer 0

execute summon block_display run function worm:innit_section {timer:-1,block:sculk_catalyst,scale:3}
execute summon block_display run function worm:innit_section {timer:-2,block:sculk,scale:2}
execute summon block_display run function worm:innit_section {timer:-3,block:sculk,scale:2}
execute summon block_display run function worm:innit_section {timer:-4,block:sculk,scale:2}
execute summon block_display run function worm:innit_section {timer:-5,block:sculk,scale:2}
execute summon block_display run function worm:innit_section {timer:-6,block:sculk,scale:2}
execute summon block_display run function worm:innit_section {timer:-7,block:sculk,scale:2}
execute summon block_display run function worm:innit_section {timer:-8,block:sculk,scale:2}
execute summon block_display run function worm:innit_section {timer:-9,block:sculk,scale:2}
execute summon block_display run function worm:innit_section {timer:-10,block:sculk,scale:2}
execute summon block_display run function worm:innit_section {timer:-11,block:sculk_sensor,scale:1}