#If working
execute if score @a[limit=1] oceanic_ultimate_cooldown matches 900.. run scoreboard players set @a oceanic_ultimate_timer 200
execute if score @a[limit=1] oceanic_ultimate_cooldown matches 900.. run scoreboard players set @a oceanic_ultimate_detector 1

execute if score @s oceanic_ultimate_cooldown matches 900.. at @s run tag @e[distance=..10,tag=!oceanic_class] add oceanic_slow

execute if score @s oceanic_ultimate_cooldown matches 900.. as @e[tag=oceanic_slow] run attribute @s minecraft:movement_speed base set 0.075

execute if score @s oceanic_ultimate_cooldown matches 900.. at @e[tag=oceanic_slow] run particle dust{color:[0.35,0.41,0.89],scale:3} ~ ~1 ~ 0 0 0 0.5 20
execute if score @s oceanic_ultimate_cooldown matches 900.. at @e[tag=oceanic_slow] run particle minecraft:glow_squid_ink ~ ~1 ~-1 0 0 0 0.075 20

execute if score @s oceanic_ultimate_cooldown matches 900.. at @e[tag=oceanic_slow] run playsound minecraft:block.bell.resonate
execute if score @s oceanic_ultimate_cooldown matches 900.. at @e[tag=oceanic_slow] run playsound minecraft:entity.drowned.death master @s ~ ~ ~ 1 0.5

execute if score @s oceanic_ability_cooldown matches 900.. as @e[distance=..10, tag=!oceanic_class] run damage @s 4 minecraft:out_of_world

execute if score @s oceanic_ultimate_cooldown matches 900.. run title @a[distance=..10] title {"text":"Oceanic Slow for 10 seconds","bold":true,"color":"blue"}

execute if score @s oceanic_ultimate_cooldown matches 900.. run bossbar set minecraft:oceanic_ultimate_cooldown color white
execute if score @s oceanic_ultimate_cooldown matches 900.. run scoreboard players set @s oceanic_ultimate_cooldown 0

#If on cooldown
execute if score @s oceanic_ultimate_cooldown matches ..900 run playsound minecraft:block.lava.pop

