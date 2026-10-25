# engine tick
function pool:classes/main/run_tick

# low frequency global player detection
scoreboard players add #tick_player swMath_V 1
scoreboard players operation #tick_player swMath_V %= C_5 swPool_C
execute if score #tick_player swMath_V matches 1 unless data storage minecraft:swpool unloaded as @a[tag=!swPool_CN,tag=!swPool_EN,tag=!swPool_welcomed] run function pool:classes/main/welcome_newplayer
execute if score #tick_player swMath_V matches 1 as @a[scores={swPool_chst=1..}] at @s run function pool:classes/table/helpers/chest_detect

scoreboard players enable @a swPool__trigger
execute as @a[scores={swPool__trigger=1..}] at @s run function pool:classes/main/trigger

scoreboard players enable @a swPool_pitch_tr
execute as @a[scores={swPool_pitch_tr=1..}] at @s run function pool:classes/main/triggers/swpool_pitch

scoreboard players reset @a[tag=!swPool_op] swPool_sizex_tr
scoreboard players enable @a[tag=swPool_op] swPool_sizex_tr
execute as @a[scores={swPool_sizex_tr=1..}] at @s run function pool:classes/main/triggers/swpool_sizex

scoreboard players reset @a[tag=!swPool_op] swPool_sizez_tr
scoreboard players enable @a[tag=swPool_op] swPool_sizez_tr
execute as @a[scores={swPool_sizez_tr=1..}] at @s run function pool:classes/main/triggers/swpool_sizez

scoreboard players reset @a[tag=!swPool_op] swPool_stkt_tr
scoreboard players enable @a[tag=swPool_op] swPool_stkt_tr
execute as @a[scores={swPool_stkt_tr=1..}] at @s run function pool:classes/main/triggers/swpool_stkt

scoreboard players reset @a[tag=!swPool_op] swPool_brkp_tr
scoreboard players enable @a[tag=swPool_op] swPool_brkp_tr
execute as @a[scores={swPool_brkp_tr=1..}] at @s run function pool:classes/main/triggers/swpool_brkp

scoreboard players reset @a[tag=!swPool_op] swPool_cbld_tr
scoreboard players enable @a[tag=swPool_op] swPool_cbld_tr
execute as @a[scores={swPool_cbld_tr=1..}] at @s run function pool:classes/main/triggers/swpool_cbld

scoreboard players reset @a[tag=!swPool_op] swPool_C_muk_tr
scoreboard players enable @a[tag=swPool_op] swPool_C_muk_tr
execute as @a[scores={swPool_C_muk_tr=1..}] at @s run function pool:classes/main/triggers/swpool_c_muk

scoreboard players reset @a[tag=!swPool_op] swPool_C_mur_tr
scoreboard players enable @a[tag=swPool_op] swPool_C_mur_tr
execute as @a[scores={swPool_C_mur_tr=1..}] at @s run function pool:classes/main/triggers/swpool_c_mur

scoreboard players reset @a[tag=!swPool_op] swPool_C_mus_tr
scoreboard players enable @a[tag=swPool_op] swPool_C_mus_tr
execute as @a[scores={swPool_C_mus_tr=1..}] at @s run function pool:classes/main/triggers/swpool_c_mus

scoreboard players reset @a[tag=!swPool_op] swPool_C_mui_tr
scoreboard players enable @a[tag=swPool_op] swPool_C_mui_tr
execute as @a[scores={swPool_C_mui_tr=1..}] at @s run function pool:classes/main/triggers/swpool_c_mui

scoreboard players reset @a[tag=!swPool_op] swPool_C_rei_tr
scoreboard players enable @a[tag=swPool_op] swPool_C_rei_tr
execute as @a[scores={swPool_C_rei_tr=1..}] at @s run function pool:classes/main/triggers/swpool_c_rei

scoreboard players reset @a[tag=!swPool_op] swPool_C_trt_tr
scoreboard players enable @a[tag=swPool_op] swPool_C_trt_tr
execute as @a[scores={swPool_C_trt_tr=1..}] at @s run function pool:classes/main/triggers/swpool_c_trt

scoreboard players reset @a[tag=!swPool_op] swPool_C_tcc_tr
scoreboard players enable @a[tag=swPool_op] swPool_C_tcc_tr
execute as @a[scores={swPool_C_tcc_tr=1..}] at @s run function pool:classes/main/triggers/swpool_c_tcc

scoreboard players reset @a[tag=!swPool_op] swPool_C_nn_tr
scoreboard players enable @a[tag=swPool_op] swPool_C_nn_tr
execute as @a[scores={swPool_C_nn_tr=1..}] at @s run function pool:classes/main/triggers/swpool_c_nn

scoreboard players reset @a[tag=!swPool_op] swPool_C_tpdr_tr
scoreboard players enable @a[tag=swPool_op] swPool_C_tpdr_tr
execute as @a[scores={swPool_C_tpdr_tr=1..}] at @s run function pool:classes/main/triggers/swpool_c_tpdr

scoreboard players reset @a[tag=!swPool_op] swPool_C_r_tr
scoreboard players enable @a[tag=swPool_op] swPool_C_r_tr
execute as @a[scores={swPool_C_r_tr=1..}] at @s run function pool:classes/main/triggers/swpool_c_r

scoreboard players reset @a[tag=!swPool_op] swPool_C_ne_tr
scoreboard players enable @a[tag=swPool_op] swPool_C_ne_tr
execute as @a[scores={swPool_C_ne_tr=1..}] at @s run function pool:classes/main/triggers/swpool_c_ne

scoreboard players reset @a[tag=!swPool_op] swPool_C_te_tr
scoreboard players enable @a[tag=swPool_op] swPool_C_te_tr
execute as @a[scores={swPool_C_te_tr=1..}] at @s run function pool:classes/main/triggers/swpool_c_te

scoreboard players reset @a[tag=!swPool_op] swPool_C_as_tr
scoreboard players enable @a[tag=swPool_op] swPool_C_as_tr
execute as @a[scores={swPool_C_as_tr=1..}] at @s run function pool:classes/main/triggers/swpool_c_as

scoreboard players reset @a[tag=!swPool_op] swPool_C_st_tr
scoreboard players enable @a[tag=swPool_op] swPool_C_st_tr
execute as @a[scores={swPool_C_st_tr=1..}] at @s run function pool:classes/main/triggers/swpool_c_st

scoreboard players reset @a[tag=!swPool_op] swPool_Score_tr
scoreboard players enable @a[tag=swPool_op] swPool_Score_tr
execute as @a[scores={swPool_Score_tr=1..}] at @s run function pool:classes/main/triggers/swpool_score
