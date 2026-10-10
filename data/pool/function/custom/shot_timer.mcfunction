# Safety cleanup: if you aren't in a match, you shouldn't have myturn
execute as @a[tag=swPool_myturn,tag=!swPool_poolplay] run tag @s remove swPool_myturn

# 1. Reset timer if balls are moving or if no game is on
execute if entity @e[type=item_display,tag=swPool_pool,scores={swPool_v=1..}] run scoreboard players reset * swPool_timer
execute if score swPool_gameon swMath_V matches 0 run scoreboard players reset * swPool_timer

# 2. Increment timer for the active player (swPool_myturn)
execute unless entity @e[tag=swPool_pooltable,tag=swPool_endgame,limit=1] unless entity @e[type=item_display,tag=swPool_pool,scores={swPool_v=1..}] if score swPool_gameon swMath_V matches 1 run scoreboard players add @a[tag=swPool_myturn] swPool_timer 1

# 3. Warnings
# 1 minute (1200 ticks)
execute as @a[scores={swPool_timer=1200}] run tellraw @s {"text":"1 minute remaining to take your shot!","color":"yellow"}
# 10 seconds (2200 ticks)
execute as @a[scores={swPool_timer=2200}] run tellraw @s {"text":"10 seconds remaining!","color":"red"}

# 4. Forfeit logic
# If a player hits 2400 ticks (2 mins), they forfeit
execute as @a[scores={swPool_timer=2400..}] run tellraw @a[distance=..50] [{"selector":"@s"},{"text":" took too long and forfeits the game!","color":"red"}]
execute if entity @a[scores={swPool_timer=2400..}] run function pool:classes/lobby/terminate_helper
