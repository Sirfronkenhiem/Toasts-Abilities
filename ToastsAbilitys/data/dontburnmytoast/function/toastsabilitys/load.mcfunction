#Welcome Message
execute at @a run playsound ui.toast.challenge_complete master @a ~ ~ ~

title @a title {"text":"Toast's Abilitys","bold":true,"color":"dark_aqua"}
title @a subtitle {"text":"(Read chat for more info)"}

tellraw @a "-----------------------------------------------------"
tellraw @a "Run /function and then one of the classes to select your element"
tellraw @a " "
tellraw @a "Then use the command keys mod the bind the abilitys to the correct keys"
tellraw @a "-----------------------------------------------------"

#Resetting all

#wind class
attribute @a[tag=wind_class, limit=1] minecraft:safe_fall_distance base reset
tag @a remove wind_class
scoreboard players set @a wind_ability_cooldown 0
scoreboard players set @a wind_ultimate_cooldown 0
bossbar remove minecraft:wind_ultimate_cooldown 

#space class
attribute @a[tag=space_class, limit=1] minecraft:gravity base reset
tag @a remove space_class
scoreboard players set @a space_ability_cooldown 0
scoreboard players set @a space_ultimate_cooldown 0
scoreboard players set @a space_ultimate_detector 0
scoreboard players set @a space_ultimate_timer 0
bossbar remove minecraft:space_ultimate_cooldown 

#electric class
attribute @a[tag=electric_class, limit=1] minecraft:movement_speed base reset
tag @a remove electric_class
scoreboard players set @a electric_ability_cooldown 0
scoreboard players set @a electric_ultimate_cooldown 0
bossbar remove minecraft:electric_ultimate_cooldown 

#sculk class
attribute @a[tag=sculk_class, limit=1] minecraft:attack_damage base reset
tag @a remove sculk_class
scoreboard players set @a sculk_ability_cooldown 0
scoreboard players set @a sculk_ultimate_cooldown 0
scoreboard players set @a sculk_ultimate_detector 0
scoreboard players set @a sculk_ultimate_timer 0
scoreboard players set @a sculk_form_timer 0
bossbar remove minecraft:sculk_ultimate_cooldown 

#life class
attribute @a[tag=life_class, limit=1] minecraft:max_health base reset
tag @a remove life_class
scoreboard players set @a life_ability_cooldown 0
scoreboard players set @a life_ultimate_cooldown 0
scoreboard players set @a life_ultimate_detector 0
scoreboard players set @a life_ultimate_timer 0
bossbar remove minecraft:life_ultimate_cooldown 

#metal class
attribute @a[tag=metal_class, limit=1] minecraft:armor base set 6
tag @a remove metal_class
scoreboard players set @a metal_ability_cooldown 0
scoreboard players set @a metal_ultimate_cooldown 0
scoreboard players set @a metal_ultimate_detector 0
scoreboard players set @a metal_ultimate_timer 0
bossbar remove minecraft:metal_ultimate_cooldown

#oceanic class
attribute @a[tag=oceanic_class, limit=1] minecraft:movement_speed base reset
tag @a remove oceanic_class
scoreboard players set @a oceanic_ability_cooldown 0
scoreboard players set @a oceanic_ultimate_cooldown 0
bossbar remove minecraft:oceanic_ultimate_cooldown 


#Creating Scoreboards
scoreboard objectives add wind_ultimate_cooldown dummy "Wind_Ultimate_Cooldown"
scoreboard objectives add wind_ability_cooldown dummy "Wind_Ability_Cooldown"

scoreboard objectives add space_ultimate_cooldown dummy "Space_Ultimate_Cooldown"
scoreboard objectives add space_ability_cooldown dummy "Space_Ability_Cooldown"
scoreboard objectives add space_ultimate_timer dummy "Space_Ultimate_timer"
scoreboard objectives add space_ultimate_detector dummy "Space_Ultimate_detector"

scoreboard objectives add electric_ultimate_cooldown dummy "Electric_Ultimate_Cooldown"
scoreboard objectives add electric_ability_cooldown dummy "Electric_Ability_Cooldown"

scoreboard objectives add sculk_ultimate_cooldown dummy "Sculk_Ultimate_Cooldown"
scoreboard objectives add sculk_ability_cooldown dummy "Sculk_Ability_Cooldown"
scoreboard objectives add sculk_passive_detection level "Sculk_Passive_Detection"
scoreboard objectives add sculk_ultimate_detector dummy "Sculk_Ultimate_detector"
scoreboard objectives add sculk_form_timer dummy "Sculk_form_timer"

scoreboard objectives add life_ultimate_cooldown dummy "Life_Ultimate_Cooldown"
scoreboard objectives add life_ability_cooldown dummy "Life_Ability_Cooldown"
scoreboard objectives add life_ultimate_timer dummy "Life_Ultimate_timer"
scoreboard objectives add life_ultimate_detector dummy "Life_Ultimate_detector"

scoreboard objectives add metal_ultimate_cooldown dummy "Metal_Ultimate_Cooldown"
scoreboard objectives add metal_ability_cooldown dummy "Metal_Ability_Cooldown"
scoreboard objectives add metal_ultimate_timer dummy "Metal_Ultimate_timer"
scoreboard objectives add metal_ultimate_detector dummy "Metal_Ultimate_detector"
scoreboard objectives add metal_form_timer dummy "Metal_form_timer"

scoreboard objectives add oceanic_ultimate_cooldown dummy "Oceanic_Ultimate_Cooldown"
scoreboard objectives add oceanic_ability_cooldown dummy "Oceanic_Ability_Cooldown"
scoreboard objectives add oceanic_ultimate_timer dummy "Oceanic_Ultimate_timer"
scoreboard objectives add oceanic_ultimate_detector dummy "Oceanic_Ultimate_detector"