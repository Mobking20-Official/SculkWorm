data modify entity @s Rotation set from entity @p Rotation
function worm:movetoground
tag @s add WormStart
data merge entity @s {block_state:{Name:redstone_block}}
schedule function worm:initworms 2t

data modify entity @s data.points set value []
tp @s ^ ^ ^-3
execute positioned 0 0 0 positioned ^ ^ ^-3 summon marker run data modify entity @n[tag=WormStart] data.points append from entity @s Pos
execute positioned 0 0 0 positioned ^ ^2.12 ^-2.12 summon marker run data modify entity @n[tag=WormStart] data.points append from entity @s Pos
execute positioned 0 0 0 positioned ^ ^3 ^ summon marker run data modify entity @n[tag=WormStart] data.points append from entity @s Pos
execute positioned 0 0 0 positioned ^ ^2.12 ^2.12 summon marker run data modify entity @n[tag=WormStart] data.points append from entity @s Pos
execute positioned 0 0 0 positioned ^ ^ ^3 summon marker run data modify entity @n[tag=WormStart] data.points append from entity @s Pos
 
scoreboard players set @s worm.timer 0