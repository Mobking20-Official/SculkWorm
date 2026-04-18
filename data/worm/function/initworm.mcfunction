# Initializes block displays after summoned
$data merge entity @s {interpolation_duration:$(delay),start_interpolation:-1}
tag @s remove WormStart