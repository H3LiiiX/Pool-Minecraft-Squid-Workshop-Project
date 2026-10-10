# 1. Prevent hitting while balls are moving
execute if entity @e[type=item_display,tag=swPool_pool,scores={swPool_v=1..}] as @e[type=arrow,distance=..5] if score @s swPool_player = @p swPool_player run kill @s
execute if entity @e[type=item_display,tag=swPool_pool,scores={swPool_v=1..}] run return 0

# 2. Prevent hitting if not a player in the active game
execute unless entity @s[tag=swPool_poolplay] as @e[type=arrow,distance=..5] if score @s swPool_player = @p swPool_player run kill @s
execute unless entity @s[tag=swPool_poolplay] run return 0

# 3. Prevent hitting if it's not your turn
execute if entity @e[tag=swPool_poolplay,tag=swPool_myturn] unless entity @s[tag=swPool_myturn] run tellraw @s {"text":"It's not your turn!","color":"red"}
execute if entity @e[tag=swPool_poolplay,tag=swPool_myturn] unless entity @s[tag=swPool_myturn] as @e[type=arrow,distance=..5] if score @s swPool_player = @p swPool_player run kill @s
execute if entity @e[tag=swPool_poolplay,tag=swPool_myturn] unless entity @s[tag=swPool_myturn] run return 0

# 4. Check if aiming at the cue ball
tag @s remove swPool_aiming_at_cue
scoreboard players set @s swPool_var00 0
execute at @s anchored eyes positioned ^ ^ ^ run function pool:classes/cue/raycast_check
#execute unless entity @s[tag=swPool_aiming_at_cue] run tellraw @s {"text":"You must aim at the cue ball!","color":"red"}
execute unless entity @s[tag=swPool_aiming_at_cue] as @e[type=arrow,distance=..5] if score @s swPool_player = @p swPool_player run kill @s
execute unless entity @s[tag=swPool_aiming_at_cue] run return 0

# If all checks pass, shoot!
function pool:classes/cue/shoot

