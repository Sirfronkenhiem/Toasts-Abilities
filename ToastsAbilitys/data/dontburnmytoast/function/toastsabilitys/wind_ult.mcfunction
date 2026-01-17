#If working
execute if score @s wind_ultimate_cooldown matches 600.. run execute at @s run summon armor_stand ~ ~ ~ {Invulnerable:1b,Invisible:1b,Tags:["wind_ult","wind_class"]}

execute if score @s wind_ultimate_cooldown matches 600.. run playsound minecraft:entity.wither.shoot master @a ~ ~ ~ 2 1

execute if score @s wind_ultimate_cooldown matches 600.. run execute as @e[distance=..10, tag=!wind_class] at @s facing entity @e[tag=wind_ult,limit=1,sort=nearest] feet run tp @s ^ ^ ^0.5
execute if score @s wind_ultimate_cooldown matches 600.. run execute at @e[distance=..10, tag=!wind_class] run particle minecraft:gust ~ ~ ~ 0 1 0 0.025 1
execute if score @s wind_ultimate_cooldown matches 600.. run execute at @e[distance=..10, tag=!wind_class] run particle cloud ~ ~ ~ 0 1 0 0.025 10

execute if score @s wind_ultimate_cooldown matches 600.. run execute as @e[distance=..10, tag=!wind_class] at @s facing entity @e[tag=wind_ult,limit=1,sort=nearest] feet run tp @s ^ ^ ^0.5
execute if score @s wind_ultimate_cooldown matches 600.. run execute at @e[distance=..10, tag=!wind_class] run particle minecraft:gust ~ ~ ~ 0 1 0 0.025 1
execute if score @s wind_ultimate_cooldown matches 600.. run execute at @e[distance=..10, tag=!wind_class] run particle cloud ~ ~ ~ 0 1 0 0.025 10

execute if score @s wind_ultimate_cooldown matches 600.. run execute as @e[distance=..10, tag=!wind_class] at @s facing entity @e[tag=wind_ult,limit=1,sort=nearest] feet run tp @s ^ ^ ^0.5
execute if score @s wind_ultimate_cooldown matches 600.. run execute at @e[distance=..10, tag=!wind_class] run particle minecraft:gust ~ ~ ~ 0 1 0 0.025 1
execute if score @s wind_ultimate_cooldown matches 600.. run execute at @e[distance=..10, tag=!wind_class] run particle cloud ~ ~ ~ 0 1 0 0.025 10

execute if score @s wind_ultimate_cooldown matches 600.. run execute as @e[distance=..10, tag=!wind_class] at @s facing entity @e[tag=wind_ult,limit=1,sort=nearest] feet run tp @s ^ ^ ^0.5
execute if score @s wind_ultimate_cooldown matches 600.. run execute at @e[distance=..10, tag=!wind_class] run particle minecraft:gust ~ ~ ~ 0 1 0 0.025 1
execute if score @s wind_ultimate_cooldown matches 600.. run execute at @e[distance=..10, tag=!wind_class] run particle cloud ~ ~ ~ 0 1 0 0.025 10

execute if score @s wind_ultimate_cooldown matches 600.. run execute as @e[distance=..10, tag=!wind_class] at @s facing entity @e[tag=wind_ult,limit=1,sort=nearest] feet run tp @s ^ ^ ^0.5
execute if score @s wind_ultimate_cooldown matches 600.. run execute at @e[distance=..10, tag=!wind_class] run particle minecraft:gust ~ ~ ~ 0 1 0 0.025 1
execute if score @s wind_ultimate_cooldown matches 600.. run execute at @e[distance=..10, tag=!wind_class] run particle cloud ~ ~ ~ 0 1 0 0.025 10

execute if score @s wind_ultimate_cooldown matches 600.. run execute as @e[distance=..10, tag=!wind_class] at @s facing entity @e[tag=wind_ult,limit=1,sort=nearest] feet run tp @s ^ ^ ^0.5
execute if score @s wind_ultimate_cooldown matches 600.. run execute at @e[distance=..10, tag=!wind_class] run particle minecraft:gust ~ ~ ~ 0 1 0 0.025 1
execute if score @s wind_ultimate_cooldown matches 600.. run execute at @e[distance=..10, tag=!wind_class] run particle cloud ~ ~ ~ 0 1 0 0.025 10

execute if score @s wind_ultimate_cooldown matches 600.. run execute as @e[distance=..10, tag=!wind_class] at @s facing entity @e[tag=wind_ult,limit=1,sort=nearest] feet run tp @s ^ ^ ^0.5
execute if score @s wind_ultimate_cooldown matches 600.. run execute at @e[distance=..10, tag=!wind_class] run particle minecraft:gust ~ ~ ~ 0 1 0 0.025 1
execute if score @s wind_ultimate_cooldown matches 600.. run execute at @e[distance=..10, tag=!wind_class] run particle cloud ~ ~ ~ 0 1 0 0.025 10

execute if score @s wind_ultimate_cooldown matches 600.. run execute as @e[distance=..10, tag=!wind_class] at @s facing entity @e[tag=wind_ult,limit=1,sort=nearest] feet run tp @s ^ ^ ^0.5
execute if score @s wind_ultimate_cooldown matches 600.. run execute at @e[distance=..10, tag=!wind_class] run particle minecraft:gust ~ ~ ~ 0 1 0 0.025 1
execute if score @s wind_ultimate_cooldown matches 600.. run execute at @e[distance=..10, tag=!wind_class] run particle cloud ~ ~ ~ 0 1 0 0.025 10

execute if score @s wind_ultimate_cooldown matches 600.. run execute as @e[distance=..10, tag=!wind_class] at @s facing entity @e[tag=wind_ult,limit=1,sort=nearest] feet run tp @s ^ ^ ^0.5
execute if score @s wind_ultimate_cooldown matches 600.. run execute at @e[distance=..10, tag=!wind_class] run particle minecraft:gust ~ ~ ~ 0 1 0 0.025 1
execute if score @s wind_ultimate_cooldown matches 600.. run execute at @e[distance=..10, tag=!wind_class] run particle cloud ~ ~ ~ 0 1 0 0.025 10

execute if score @s wind_ultimate_cooldown matches 600.. run execute as @e[distance=..10, tag=!wind_class] at @s facing entity @e[tag=wind_ult,limit=1,sort=nearest] feet run tp @s ^ ^ ^0.5
execute if score @s wind_ultimate_cooldown matches 600.. run execute at @e[distance=..10, tag=!wind_class] run particle minecraft:gust ~ ~ ~ 0 1 0 0.025 1
execute if score @s wind_ultimate_cooldown matches 600.. run execute at @e[distance=..10, tag=!wind_class] run particle cloud ~ ~ ~ 0 1 0 0.025 10

execute if score @s wind_ultimate_cooldown matches 600.. run execute as @e[distance=..10, tag=!wind_class] run damage @s 4 minecraft:out_of_world

execute if score @s wind_ultimate_cooldown matches 600.. run kill @e[type=minecraft:armor_stand, tag=wind_class]

execute if score @s wind_ultimate_cooldown matches 600.. run bossbar set minecraft:wind_ultimate_cooldown color white

execute if score @s wind_ultimate_cooldown matches 600.. run scoreboard players set @s wind_ultimate_cooldown 0

#If on cooldown
execute if score @s wind_ultimate_cooldown matches ..600 run playsound minecraft:block.lava.pop master DontBurnMyToast ~ ~ ~ 2 1
