# respot, undo, ball in hand

# respot if clear scratch, otherwise do nothing
#execute unless entity @e[type=item_display,tag=swPool_pool,tag=swPool_09,limit=1] unless entity @e[type=item_display,tag=swPool_pool,tag=swPool_cue,limit=1] run function pool:classes/master/9ball/respot_9

execute unless entity @e[type=item_display,tag=swPool_pool,tag=swPool_09,limit=1] run tellraw @a[tag=swPool_spec,tag=swPool_EN] [{"text":"➇ ","color":"white"},{"text":"<Respot?>","color":"white","underlined":true,"click_event":{"action":"run_command","command":"/trigger swPool__trigger set 41112177"}}]
execute unless entity @e[type=item_display,tag=swPool_pool,tag=swPool_09,limit=1] run tellraw @a[tag=swPool_spec,tag=swPool_CN] [{"text":"➇ ","color":"white"},{"text":"<复位九号球？>","color":"white","underlined":true,"click_event":{"action":"run_command","command":"/trigger swPool__trigger set 41112177"}}]


