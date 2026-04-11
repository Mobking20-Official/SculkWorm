# Summons the initial block display
advancement revoke @s only worm:worm_use
execute unless predicate {condition:"time_check",value:0,period:20} run return 0
execute summon block_display run function worm:init
