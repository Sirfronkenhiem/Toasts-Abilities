#If working
execute if score @s electric_ability_cooldown matches 200.. run execute as @s run effect give @s minecraft:speed 5 1 true
execute if score @s electric_ability_cooldown matches 200.. run execute as @s run effect give @s minecraft:haste 5 3 true

execute if score @s electric_ability_cooldown matches 200.. run particle minecraft:glow ~ ~ ~ 0 0 0 1 120
execute if score @s electric_ability_cooldown matches 200.. run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 1 60
execute if score @s electric_ability_cooldown matches 200.. run particle minecraft:end_rod ~ ~ ~ 0 0 0 0.1 20

execute if score @s electric_ability_cooldown matches 200.. run playsound minecraft:block.trial_spawner.about_to_spawn_item
execute if score @s electric_ability_cooldown matches 200.. run playsound minecraft:block.amethyst_block.resonate

execute if score @s electric_ability_cooldown matches 200.. run scoreboard players set @s electric_ability_cooldown 0

#If on cooldown
execute if score @s electric_ability_cooldown matches ..200 run playsound minecraft:block.lava.pop master DontBurnMyToast ~ ~ ~ 2 1
