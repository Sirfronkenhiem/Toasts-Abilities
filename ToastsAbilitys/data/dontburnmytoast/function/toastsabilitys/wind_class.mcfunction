title @s title {"text":"Wind Class Selected!","bold":true}
execute at @s run playsound ui.toast.challenge_complete

tellraw @s "-----------------------------------------------------"
tellraw @s "Wind is a class focused on gaining hight (using abiltys) to attack there opponents from the skys!"
tellraw @s " "
tellraw @s "Abilty: Fly high in the air for 1 second"
tellraw @s " "
tellraw @s "Ultimate: Pulls all enemys in a 10 block range towards you dealing 3 hearts of damage"
tellraw @s " "
tellraw @s "Passive: You take no fall damage for up to 1000 blocks"
tellraw @s "-----------------------------------------------------"

attribute @s minecraft:safe_fall_distance base set 1000
tag @s add wind_class

#Creating Bossbar
bossbar add wind_ultimate_cooldown "Ultimate Cooldown"
bossbar set minecraft:wind_ultimate_cooldown players @a[tag=wind_class]
bossbar set minecraft:wind_ultimate_cooldown max 600
bossbar set minecraft:wind_ultimate_cooldown color white
