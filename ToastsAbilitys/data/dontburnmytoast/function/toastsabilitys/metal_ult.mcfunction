#If working
execute if score @a[limit=1] metal_ultimate_cooldown matches 1200.. run scoreboard players set @a metal_ultimate_detector 1
execute if score @a[limit=1] metal_ultimate_cooldown matches 1200.. run scoreboard players set @a metal_form_timer 200

execute if score @s metal_ultimate_cooldown matches 1200.. at @s run tag @e[tag=metal_class] add metal_form

execute if score @s metal_ultimate_cooldown matches 1200.. at @s run effect give @s minecraft:resistance 10 10 false

execute if score @s metal_ultimate_cooldown matches 1200.. at @s run particle minecraft:dust_plume ~ ~ ~ 0 0 0 0.75 100
execute if score @s metal_ultimate_cooldown matches 1200.. at @s run particle minecraft:explosion ~ ~ ~ 0 0 0 0.5 2
execute if score @s metal_ultimate_cooldown matches 1200.. at @s run particle minecraft:cloud -76 -57 16 0 0 0 0.25 75

execute if score @s metal_ultimate_cooldown matches 1200.. at @s run playsound minecraft:block.anvil.use
execute if score @s metal_ultimate_cooldown matches 1200.. at @s run playsound minecraft:block.anvil.land
execute if score @s metal_ultimate_cooldown matches 1200.. at @s run playsound minecraft:item.mace.smash_ground

execute if score @s metal_ultimate_cooldown matches 1200.. run bossbar set minecraft:metal_ultimate_cooldown color white
execute if score @s metal_ultimate_cooldown matches 1200.. run scoreboard players set @s metal_ultimate_cooldown 0

#If on cooldown
execute if score @s metal_ultimate_cooldown matches ..1200 run playsound minecraft:block.lava.pop
