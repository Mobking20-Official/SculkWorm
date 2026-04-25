$data modify storage worm:macro temp.x set from entity @s data.points[$(i)].translation[0]
$data modify storage worm:macro temp.y set from entity @s data.points[$(i)].translation[1]
$data modify storage worm:macro temp.z set from entity @s data.points[$(i)].translation[2]
function worm:damage with storage worm:macro temp