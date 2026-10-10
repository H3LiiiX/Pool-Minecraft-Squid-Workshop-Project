execute if entity @s[tag=swPool_poolplay] unless entity @e[tag=swPool_pooltable,tag=swPool_endgame,limit=1] run return run function pool:custom/end_game_early
execute if entity @a[tag=swPool_poolplay] unless entity @e[tag=swPool_pooltable,tag=swPool_endgame,limit=1] run tellraw @a[distance=..10] {"text":"A game is already in progress!","color":"red"}
execute if entity @a[tag=swPool_poolplay] unless entity @e[tag=swPool_pooltable,tag=swPool_endgame,limit=1] run return 0
tag @a[tag=!swPool_CN] add swPool_EN
function pool:classes/lobby/terminate_helper
tag @p add swPool_wait_snooker
execute as @p at @s run function pool:classes/snooker/startsp_helper
execute as @a[tag=swPool_poolplay] run function app:get/pool/cuestick_helper

