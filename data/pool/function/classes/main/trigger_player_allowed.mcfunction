# returns 1 if the swPool__trigger value of @s is one any player may use: adjusting their own shot
# every other value is refused in trigger.mcfunction; operators reach those actions through menu buttons that run /function

# shot help, power help, and the cue ball hit-point grid
execute if score @s swPool__trigger matches 4110803..4110804 run return 1
execute if score @s swPool__trigger matches 4110806 run return 1
# hit-point grid points and fine-tune (411081001-411081077), power and cancel (411081101-411081122)
execute if score @s swPool__trigger matches 411081001..411081122 run return 1

return 0
