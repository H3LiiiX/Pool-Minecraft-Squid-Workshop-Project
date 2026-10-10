tag @a remove swPool_hitcue
scoreboard players reset @a swPool_firsthit

execute if entity @e[tag=swPool_cue,tag=swPool_pool] run tag @a[tag=swPool_poolplay] remove swPool_ballinhand
execute if entity @a[tag=swPool_ballinhand] run tellraw @a[tag=swPool_spec,tag=swPool_EN] [{"text":"➇ ","color":"white"},{"text":"Ball in-hand."}]
execute if entity @a[tag=swPool_ballinhand] run tellraw @a[tag=swPool_spec,tag=swPool_CN] [{"text":"➇ ","color":"white"},{"text":"请放置母球。"}]


