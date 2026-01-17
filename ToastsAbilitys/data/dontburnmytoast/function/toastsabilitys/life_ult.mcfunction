#If working
execute if score @a[limit=1] life_ultimate_cooldown matches 900.. run scoreboard players set @a life_ultimate_timer 300
execute if score @a[limit=1] life_ultimate_cooldown matches 900.. run scoreboard players set @a life_ultimate_detector 1

execute if score @s life_ultimate_cooldown matches 900.. at @s run tag @e[distance=..10,tag=!life_class] add life_steal

execute if score @s life_ultimate_cooldown matches 900.. as @e[tag=life_steal] run attribute @s minecraft:max_health base set 16


execute if score @s life_ultimate_cooldown matches 900.. at @e[tag=life_class] run particle minecraft:enchant ~ ~ ~ 0 0 0 1 1000
execute if score @s life_ultimate_cooldown matches 900.. at @e[tag=life_class] run particle minecraft:end_rod ~ ~ ~ 0 0 0 0.25 50

execute if score @s life_ultimate_cooldown matches 900.. at @e[tag=life_steal] run particle minecraft:crit ~ ~ ~ 0 0 0 1 100
execute if score @s life_ultimate_cooldown matches 900.. at @e[tag=life_steal] run particle minecraft:raid_omen ~ ~ ~ 0 0 0 1 120

execute if score @s life_ultimate_cooldown matches 900.. at @e[tag=life_steal] run playsound minecraft:block.bell.resonate
execute if score @s life_ultimate_cooldown matches 900.. at @e[tag=life_steal] run playsound minecraft:block.bell.use master DontBurnMyToast ~ ~ ~ 1 0.5

execute if score @s life_ultimate_cooldown matches 900.. run title @a[distance=..10] title {"text":"Life Drained for 15 seconds","bold":true,"color":"light_purple"}

execute if score @s life_ultimate_cooldown matches 900.. run bossbar set minecraft:life_ultimate_cooldown color white
execute if score @s life_ultimate_cooldown matches 900.. run scoreboard players set @s life_ultimate_cooldown 0

#If on cooldown
execute if score @s life_ultimate_cooldown matches ..900 run playsound minecraft:block.lava.pop 
