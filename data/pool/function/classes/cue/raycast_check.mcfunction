execute if score @s swPool_var00 matches ..50 if entity @e[tag=swPool_cue,distance=..0.8] run tag @s add swPool_aiming_at_cue
execute if score @s swPool_var00 matches ..50 unless entity @s[tag=swPool_aiming_at_cue] run scoreboard players add @s swPool_var00 1
execute if score @s swPool_var00 matches ..50 unless entity @s[tag=swPool_aiming_at_cue] positioned ^ ^ ^0.1 run function pool:classes/cue/raycast_check

