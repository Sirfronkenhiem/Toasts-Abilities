#If working
execute if score @a[limit=1] sculk_ultimate_cooldown matches 2000.. run scoreboard players set @a sculk_ultimate_detector 1
execute if score @a[limit=1] sculk_ultimate_cooldown matches 2000.. run scoreboard players set @a sculk_form_timer 300

execute if score @s sculk_ultimate_cooldown matches 2000.. at @s run tag @e[tag=sculk_class] add sculk_form

execute if score @s sculk_ultimate_cooldown matches 2000.. at @s run effect give @s minecraft:regeneration 15 3

execute if score @s sculk_ultimate_cooldown matches 2000.. at @s run particle minecraft:sculk_soul ~ ~ ~ 0 1 0 0.025 20
execute if score @s sculk_ultimate_cooldown matches 2000.. at @s run particle minecraft:sculk_charge_pop ~ ~ ~ 0 1 0 0.025 50
execute if score @s sculk_ultimate_cooldown matches 2000.. at @s run particle minecraft:sonic_boom ~ ~ ~ 0 1 0 0.025 5

execute if score @s sculk_ultimate_cooldown matches 2000.. at @s run playsound minecraft:block.sculk.break master @a ~ ~ ~ 2 
execute if score @s sculk_ultimate_cooldown matches 2000.. at @s run playsound minecraft:block.sculk.charge master @a ~ ~ ~ 2 
execute if score @s sculk_ultimate_cooldown matches 2000.. at @s run playsound minecraft:block.sculk.spread master @a ~ ~ ~ 2 
execute if score @s sculk_ultimate_cooldown matches 2000.. at @s run playsound minecraft:block.sculk_shrieker.shriek master @a ~ ~ ~ 2 
execute if score @s sculk_ultimate_cooldown matches 2000.. at @s run playsound minecraft:entity.warden.emerge master @a ~ ~ ~ 2

execute if score @s sculk_ultimate_cooldown matches 2000.. run bossbar set minecraft:sculk_ultimate_cooldown color white
execute if score @s sculk_ultimate_cooldown matches 2000.. run scoreboard players set @s sculk_ultimate_cooldown 0

#If on cooldown
execute if score @s sculk_ultimate_cooldown matches ..2000 run playsound minecraft:block.lava.pop
