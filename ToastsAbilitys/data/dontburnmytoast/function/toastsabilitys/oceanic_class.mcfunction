title @s title {"text":"Oceanic Class Selected!","bold":true,"color":"blue"}
execute at @s run playsound ui.toast.challenge_complete

tellraw @s "-----------------------------------------------------"
tellraw @s "The oceanic class is ment of debuffing enemies to gain the advantage!"
tellraw @s " "
tellraw @s "Abilty: Give all players mining fatigue within 10 blocks"
tellraw @s " "
tellraw @s "Ultimate: Slow and damage players within 10 blocks"
tellraw @s " "
tellraw @s "Passive: You have dolphins grace and conduit power"
tellraw @s "-----------------------------------------------------"

tag @s add oceanic_class

#Creating Bossbar
bossbar add oceanic_ultimate_cooldown "Ultimate Cooldown"
bossbar set minecraft:oceanic_ultimate_cooldown players @a[tag=oceanic_class]
bossbar set minecraft:oceanic_ultimate_cooldown max 900
bossbar set minecraft:oceanic_ultimate_cooldown color white
