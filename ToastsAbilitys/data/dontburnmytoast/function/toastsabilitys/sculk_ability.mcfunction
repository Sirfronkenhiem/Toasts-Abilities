#If working
execute if score @s sculk_ability_cooldown matches 200.. run effect give @e[distance=..10, tag=!sculk_class] minecraft:darkness 5 1 true
execute if score @s sculk_ability_cooldown matches 200.. run effect give @e[distance=..10, tag=!sculk_class] minecraft:wither 5 2 true

execute if score @s sculk_ability_cooldown matches 200.. as @e[tag=!sculk_class,distance=..10] at @s run particle minecraft:sculk_charge_pop ~ ~ ~ 0 0 0 0.1 20
execute if score @s sculk_ability_cooldown matches 200.. as @e[tag=!sculk_class,distance=..10] at @s run particle minecraft:sculk_soul ~ ~ ~ 0 0 0 0.1 20
execute if score @s sculk_ability_cooldown matches 200.. as @e[tag=!sculk_class,distance=..10] at @s run particle minecraft:trial_spawner_detection_ominous ~ ~ ~ 0 0 0 0.05 20

execute if score @s sculk_ability_cooldown matches 200.. run playsound minecraft:entity.warden.heartbeat
execute if score @s sculk_ability_cooldown matches 200.. run playsound minecraft:block.sculk_shrieker.shriek

execute if score @s sculk_ability_cooldown matches 200.. as @e[tag=!sculk_class,distance=..10] at @s run particle minecraft:sculk_charge_pop ~ ~ ~ 0 0 0 0.1 20
execute if score @s sculk_ability_cooldown matches 200.. as @e[tag=!sculk_class,distance=..10] at @s run particle minecraft:sculk_soul ~ ~ ~ 0 0 0 0.1 20
execute if score @s sculk_ability_cooldown matches 200.. as @e[tag=!sculk_class,distance=..10] at @s run particle minecraft:trial_spawner_detection_ominous ~ ~ ~ 0 0 0 0.05 20

execute if score @s sculk_ability_cooldown matches 200.. run scoreboard players set @s sculk_ability_cooldown 0

#If on cooldown
execute if score @s sculk_ability_cooldown matches ..200 run playsound minecraft:block.lava.pop master DontBurnMyToast ~ ~ ~ 2 1
