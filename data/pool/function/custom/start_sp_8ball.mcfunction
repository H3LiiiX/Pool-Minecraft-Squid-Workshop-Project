execute if entity @s[tag=swPool_poolplay] unless entity @e[tag=swPool_pooltable,tag=swPool_endgame,limit=1] run return run function pool:custom/end_game_early
execute if entity @a[tag=swPool_poolplay] unless entity @e[tag=swPool_pooltable,tag=swPool_endgame,limit=1] run tellraw @a[distance=..10] {"text":"A game is already in progress!","color":"red"}
execute if entity @a[tag=swPool_poolplay] unless entity @e[tag=swPool_pooltable,tag=swPool_endgame,limit=1] run return 0
tag @a[tag=!swPool_CN] add swPool_EN
function pool:classes/lobby/terminate_helper
# Ensure automatic judge is ON (required for bot)
data remove storage minecraft:swpool automatic_judge_off
# Start Generic 8-ball AI mode
execute as @p at @s run function pool:classes/cn8ball/startsp_helper_botmode
execute as @a[tag=swPool_poolplay] run function app:get/pool/cuestick_helper

