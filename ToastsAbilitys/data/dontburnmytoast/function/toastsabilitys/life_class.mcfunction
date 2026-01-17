title @s title {"text":"life Class Selected!","bold":true,"color":"light_purple"}
execute at @s run playsound ui.toast.challenge_complete

tellraw @s "-----------------------------------------------------"
tellraw @s "The life class is a build for long fights with high survivability!"
tellraw @s " "
tellraw @s "Abilty: gain super fast regeneration for a short time"
tellraw @s " "
tellraw @s "Ultimate: everyone around your loses 2 max hp"
tellraw @s " "
tellraw @s "Passive: Your base health is increased"
tellraw @s "-----------------------------------------------------"

attribute @s minecraft:max_health base set 30
effect give @s minecraft:regeneration 3 255
tag @s add life_class

#Creating Bossbar
bossbar add life_ultimate_cooldown "Ultimate Cooldown"
bossbar set minecraft:life_ultimate_cooldown players @a[tag=life_class]
bossbar set minecraft:life_ultimate_cooldown max 900
bossbar set minecraft:life_ultimate_cooldown color white
