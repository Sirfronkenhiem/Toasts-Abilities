title @s title {"text":"Space Class Selected!","bold":true,"color":"dark_purple"}
execute at @s run playsound ui.toast.challenge_complete

tellraw @s "-----------------------------------------------------"
tellraw @s "The space class is used to control the battle field through slowing and weakening there opponents!"
tellraw @s " "
tellraw @s "Abilty: Apply enemies within a 5 block range with slowness 3 and weakness 3 for 5 seconds"
tellraw @s " "
tellraw @s "Ultimate: Fully timestop enemies within 10 blocks freezing them"
tellraw @s " "
tellraw @s "Passive: You have half as much gravity"
tellraw @s "-----------------------------------------------------"

attribute @s minecraft:gravity base set 0.04
tag @s add space_class

#Creating Bossbar
bossbar add space_ultimate_cooldown "Ultimate Cooldown"
bossbar set minecraft:space_ultimate_cooldown players @a[tag=space_class]
bossbar set minecraft:space_ultimate_cooldown max 900
bossbar set minecraft:space_ultimate_cooldown color white
