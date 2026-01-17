#If working
execute if score @a[limit=1] space_ultimate_cooldown matches 900.. run scoreboard players set @a space_ultimate_timer 100
execute if score @a[limit=1] space_ultimate_cooldown matches 900.. run scoreboard players set @a space_ultimate_detector 1

execute if score @s space_ultimate_cooldown matches 900.. at @s run tag @e[distance=..10,tag=!space_class] add space_frozen

execute if score @s space_ultimate_cooldown matches 900.. as @e[tag=space_frozen] run attribute @s minecraft:movement_speed base set 0.001
execute if score @s space_ultimate_cooldown matches 900.. as @e[tag=space_frozen] run attribute @s minecraft:jump_strength base set 0.001

execute if score @s space_ultimate_cooldown matches 900.. at @e[tag=space_frozen] run particle minecraft:smoke ~ ~ ~ 0 0 0 0.1 60
execute if score @s space_ultimate_cooldown matches 900.. at @e[tag=space_frozen] run particle minecraft:witch ~ ~ ~ 0 0 0 0.05 20
execute if score @s space_ultimate_cooldown matches 900.. at @e[tag=space_frozen] run particle minecraft:smoke ~ ~ ~ 0 0 0 0.1 60
execute if score @s space_ultimate_cooldown matches 900.. at @e[tag=space_frozen] run particle minecraft:witch ~ ~ ~ 0 0 0 0.05 20
execute if score @s space_ultimate_cooldown matches 900.. at @e[tag=space_frozen] run particle minecraft:smoke ~ ~ ~ 0 0 0 0.1 60
execute if score @s space_ultimate_cooldown matches 900.. at @e[tag=space_frozen] run particle minecraft:witch ~ ~ ~ 0 0 0 0.05 20

execute if score @s space_ultimate_cooldown matches 900.. at @e[tag=space_frozen] run playsound minecraft:block.bell.resonate
execute if score @s space_ultimate_cooldown matches 900.. at @e[tag=space_frozen] run playsound minecraft:block.bell.use master DontBurnMyToast ~ ~ ~ 1 0.5

execute if score @s space_ultimate_cooldown matches 900.. run title @a[distance=..10] title {"text":"Time Stopped For 5 Seconds","bold":true,"color":"dark_purple"}

execute if score @s space_ultimate_cooldown matches 900.. run bossbar set minecraft:space_ultimate_cooldown color white
execute if score @s space_ultimate_cooldown matches 900.. run scoreboard players set @s space_ultimate_cooldown 0

#If on cooldown
execute if score @s space_ultimate_cooldown matches ..900 run playsound minecraft:block.lava.pop

