#If working
execute if score @s space_ability_cooldown matches 200.. run execute as @s run effect give @e[distance=..5, tag=!space_class] minecraft:slowness 5 2 true
execute if score @s space_ability_cooldown matches 200.. run execute as @s run effect give @e[distance=..5, tag=!space_class] minecraft:weakness 5 2 true

execute if score @s space_ability_cooldown matches 200.. as @e[tag=!space_class,distance=..5] at @s run particle minecraft:reverse_portal ~ ~1 ~ 0 0 0 0.1 100
execute if score @s space_ability_cooldown matches 200.. as @e[tag=!space_class,distance=..5] at @s run particle minecraft:witch ~ ~1 ~ 0 0 0 0.03 20

execute if score @s space_ability_cooldown matches 200.. run playsound minecraft:entity.glow_squid.death
execute if score @s space_ability_cooldown matches 200.. run playsound minecraft:entity.glow_squid.ambient

execute if score @s space_ability_cooldown matches 200.. run execute as @e[distance=..5, tag=!space_class] run damage @s 2 minecraft:out_of_world

execute if score @s space_ability_cooldown matches 200.. run scoreboard players set @s space_ability_cooldown 0

#If on cooldown
execute if score @s space_ability_cooldown matches ..200 run playsound minecraft:block.lava.pop master DontBurnMyToast ~ ~ ~ 2 1
