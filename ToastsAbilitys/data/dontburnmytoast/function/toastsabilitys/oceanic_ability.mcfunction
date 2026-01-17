#If working
execute if score @s oceanic_ability_cooldown matches 200.. run execute as @s run effect give @e[distance=..10, tag=!oceanic_class] minecraft:mining_fatigue 5 2


execute if score @s oceanic_ability_cooldown matches 200.. as @e[distance=..10, tag=!oceanic_class] run particle minecraft:elder_guardian ~ ~ ~ 0 0 0 1 1

execute if score @s oceanic_ability_cooldown matches 200.. run playsound minecraft:entity.elder_guardian.curse
execute if score @s oceanic_ability_cooldown matches 200.. run playsound minecraft:entity.elder_guardian.death

execute if score @s oceanic_ability_cooldown matches 200.. run scoreboard players set @s oceanic_ability_cooldown 0

#If on cooldown
execute if score @s oceanic_ability_cooldown matches ..200 run playsound minecraft:block.lava.pop master DontBurnMyToast ~ ~ ~ 2 1
