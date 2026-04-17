# Set transformation for a block display based on the current point
$data modify entity @s transformation.translation set from entity @s data.points[$(i)].translation
# $data modify entity @s transformation.left_rotation set from entity @s data.points[$(i)].rotation
