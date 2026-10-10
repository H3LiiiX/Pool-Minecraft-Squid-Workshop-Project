execute if entity @e[tag=swPool_poolplay,tag=swPool_myturn] unless entity @s[tag=swPool_myturn] run tellraw @s {"text":"It's not your turn!","color":"red"}
execute if entity @e[tag=swPool_poolplay,tag=swPool_myturn] unless entity @s[tag=swPool_myturn] run return 0
function pool:classes/cue/map

