title @s title {"text":"Electric Class Selected!","bold":true,"color":"yellow"}
execute at @s run playsound ui.toast.challenge_complete

tellraw @s "-----------------------------------------------------"
tellraw @s "The electric class is used to get an advantage through its speed and agility!"
tellraw @s " "
tellraw @s "Abilty: Speed yourself up applying speed 2 and haste 4 for 5 seconds"
tellraw @s " "
tellraw @s "Ultimate: Strike lightning on anyone within a ten block range"
tellraw @s " "
tellraw @s "Passive: Your base speed is increased"
tellraw @s "-----------------------------------------------------"

attribute @s minecraft:movement_speed base set 0.15
tag @s add electric_class

#Creating Bossbar
bossbar add electric_ultimate_cooldown "Ultimate Cooldown"
bossbar set minecraft:electric_ultimate_cooldown players @a[tag=electric_class]
bossbar set minecraft:electric_ultimate_cooldown max 600
bossbar set minecraft:electric_ultimate_cooldown color white
