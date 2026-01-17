#Wind Ability Cooldown
execute as @a[tag=wind_class] run scoreboard players add @a[tag=wind_class] wind_ability_cooldown 1

execute as @a[tag=wind_class,scores={wind_ability_cooldown=1..20}] run title @s actionbar "On Cooldown (5 Seconds)"
execute as @a[tag=wind_class,scores={wind_ability_cooldown=21..40}] run title @s actionbar "On Cooldown (4 Seconds)"
execute as @a[tag=wind_class,scores={wind_ability_cooldown=41..60}] run title @s actionbar "On Cooldown (3 Seconds)"
execute as @a[tag=wind_class,scores={wind_ability_cooldown=61..80}] run title @s actionbar "On Cooldown (2 Seconds)"
execute as @a[tag=wind_class,scores={wind_ability_cooldown=81..99}] run title @s actionbar "On Cooldown (1 Second)"
execute as @a[tag=wind_class,scores={wind_ability_cooldown=100..}] run title @s actionbar "Ready to use"

#Wind Ultimate Cooldown
execute as @a[tag=wind_class] run scoreboard players add @a[tag=wind_class] wind_ultimate_cooldown 1

execute as @a[tag=wind_class] store result bossbar minecraft:wind_ultimate_cooldown value run scoreboard players get @s wind_ultimate_cooldown

execute as @a[tag=wind_class,scores={wind_ultimate_cooldown=600}] at @s run playsound minecraft:entity.wither.spawn master @s ~ ~ ~ 1 1
execute as @a[tag=wind_class,scores={wind_ultimate_cooldown=600}] at @s run bossbar set minecraft:wind_ultimate_cooldown color blue


#Space Ability Cooldown
execute as @a[tag=space_class] run scoreboard players add @a[tag=space_class] space_ability_cooldown 1

execute as @a[tag=space_class,scores={space_ability_cooldown=1..20}] run title @s actionbar "On Cooldown (10)"
execute as @a[tag=space_class,scores={space_ability_cooldown=21..40}] run title @s actionbar "On Cooldown (9)"
execute as @a[tag=space_class,scores={space_ability_cooldown=41..60}] run title @s actionbar "On Cooldown (8)"
execute as @a[tag=space_class,scores={space_ability_cooldown=61..80}] run title @s actionbar "On Cooldown (7)"
execute as @a[tag=space_class,scores={space_ability_cooldown=81..100}] run title @s actionbar "On Cooldown (6)"
execute as @a[tag=space_class,scores={space_ability_cooldown=101..120}] run title @s actionbar "On Cooldown (5)"
execute as @a[tag=space_class,scores={space_ability_cooldown=121..140}] run title @s actionbar "On Cooldown (4)"
execute as @a[tag=space_class,scores={space_ability_cooldown=141..160}] run title @s actionbar "On Cooldown (3)"
execute as @a[tag=space_class,scores={space_ability_cooldown=161..180}] run title @s actionbar "On Cooldown (2)"
execute as @a[tag=space_class,scores={space_ability_cooldown=181..199}] run title @s actionbar "On Cooldown (1)"
execute as @a[tag=space_class,scores={space_ability_cooldown=200..}] run title @s actionbar "Ready to use"

#Space Ultimate Cooldown
execute as @a[tag=space_class] run scoreboard players add @s[tag=space_class] space_ultimate_cooldown 1

execute as @a[tag=space_class] store result bossbar minecraft:space_ultimate_cooldown value run scoreboard players get @s space_ultimate_cooldown

execute as @a[tag=space_class,scores={space_ultimate_cooldown=900}] at @s run playsound minecraft:entity.wither.spawn master @s ~ ~ ~ 1 1
execute as @a[tag=space_class,scores={space_ultimate_cooldown=900}] at @s run bossbar set minecraft:space_ultimate_cooldown color purple


execute if score @a[limit=1] space_ultimate_detector matches 1 run scoreboard players remove @a[tag=space_class, limit=1] space_ultimate_timer 1

execute as @e[scores={space_ultimate_timer=..0}] as @e[tag=space_frozen] run attribute @s minecraft:movement_speed base reset 
execute as @e[scores={space_ultimate_timer=..0}] as @e[tag=space_frozen] run attribute @s minecraft:jump_strength base reset 

execute as @e[scores={space_ultimate_timer=..0}] run scoreboard players set @s space_ultimate_detector 0

#Electric Ability Cooldown
execute as @a[tag=electric_class] run scoreboard players add @a[tag=electric_class] electric_ability_cooldown 1

execute as @a[tag=electric_class,scores={electric_ability_cooldown=1..20}] run title @s actionbar "On Cooldown (10)"
execute as @a[tag=electric_class,scores={electric_ability_cooldown=21..40}] run title @s actionbar "On Cooldown (9)"
execute as @a[tag=electric_class,scores={electric_ability_cooldown=41..60}] run title @s actionbar "On Cooldown (8)"
execute as @a[tag=electric_class,scores={electric_ability_cooldown=61..80}] run title @s actionbar "On Cooldown (7)"
execute as @a[tag=electric_class,scores={electric_ability_cooldown=81..100}] run title @s actionbar "On Cooldown (6)"
execute as @a[tag=electric_class,scores={electric_ability_cooldown=101..120}] run title @s actionbar "On Cooldown (5)"
execute as @a[tag=electric_class,scores={electric_ability_cooldown=121..140}] run title @s actionbar "On Cooldown (4)"
execute as @a[tag=electric_class,scores={electric_ability_cooldown=141..160}] run title @s actionbar "On Cooldown (3)"
execute as @a[tag=electric_class,scores={electric_ability_cooldown=161..180}] run title @s actionbar "On Cooldown (2)"
execute as @a[tag=electric_class,scores={electric_ability_cooldown=181..199}] run title @s actionbar "On Cooldown (1)"
execute as @a[tag=electric_class,scores={electric_ability_cooldown=200..}] run title @s actionbar "Ready to use"

#Electric Ultimate Cooldown
execute as @a[tag=electric_class] run scoreboard players add @a[tag=electric_class] electric_ultimate_cooldown 1

execute as @a[tag=electric_class] store result bossbar minecraft:electric_ultimate_cooldown value run scoreboard players get @s electric_ultimate_cooldown

execute as @a[tag=electric_class,scores={electric_ultimate_cooldown=600}] at @s run playsound minecraft:entity.wither.spawn master @s ~ ~ ~ 1 1
execute as @a[tag=electric_class,scores={electric_ultimate_cooldown=600}] at @s run bossbar set minecraft:electric_ultimate_cooldown color yellow

#Sculk Passive Detection
execute as @a[tag=sculk_class] if score @s sculk_passive_detection matches 0..10 run attribute @s minecraft:attack_damage base set 2

execute as @a[tag=sculk_class] if score @s sculk_passive_detection matches 11..20 run attribute @s minecraft:attack_damage base set 3

execute as @a[tag=sculk_class] if score @s sculk_passive_detection matches 21..30 run attribute @s minecraft:attack_damage base set 4

execute as @a[tag=sculk_class] if score @s sculk_passive_detection matches 31.. run attribute @s minecraft:attack_damage base set 5


#Sculk Ability Cooldown
execute as @a[tag=sculk_class] run scoreboard players add @a[tag=sculk_class] sculk_ability_cooldown 1

execute as @a[tag=sculk_class,scores={sculk_ability_cooldown=1..20}] run title @s actionbar "On Cooldown (10)"
execute as @a[tag=sculk_class,scores={sculk_ability_cooldown=21..40}] run title @s actionbar "On Cooldown (9)"
execute as @a[tag=sculk_class,scores={sculk_ability_cooldown=41..60}] run title @s actionbar "On Cooldown (8)"
execute as @a[tag=sculk_class,scores={sculk_ability_cooldown=61..80}] run title @s actionbar "On Cooldown (7)"
execute as @a[tag=sculk_class,scores={sculk_ability_cooldown=81..100}] run title @s actionbar "On Cooldown (6)"
execute as @a[tag=sculk_class,scores={sculk_ability_cooldown=101..120}] run title @s actionbar "On Cooldown (5)"
execute as @a[tag=sculk_class,scores={sculk_ability_cooldown=121..140}] run title @s actionbar "On Cooldown (4)"
execute as @a[tag=sculk_class,scores={sculk_ability_cooldown=141..160}] run title @s actionbar "On Cooldown (3)"
execute as @a[tag=sculk_class,scores={sculk_ability_cooldown=161..180}] run title @s actionbar "On Cooldown (2)"
execute as @a[tag=sculk_class,scores={sculk_ability_cooldown=181..199}] run title @s actionbar "On Cooldown (1)"
execute as @a[tag=sculk_class,scores={sculk_ability_cooldown=200..}] run title @s actionbar "Ready to use"

#Sculk Ultimate Cooldown
execute as @a[tag=sculk_class] run scoreboard players add @a[tag=sculk_class] sculk_ultimate_cooldown 1

execute as @a[tag=sculk_class] store result bossbar minecraft:sculk_ultimate_cooldown value run scoreboard players get @s sculk_ultimate_cooldown

execute as @a[tag=sculk_class,scores={sculk_ultimate_cooldown=2000}] at @s run playsound minecraft:entity.wither.spawn master @s ~ ~ ~ 1 1
execute as @a[tag=sculk_class,scores={sculk_ultimate_cooldown=2000}] at @s run bossbar set minecraft:sculk_ultimate_cooldown color blue

execute as @a[tag=sculk_class] store result bossbar minecraft:sculk_form_timer value run scoreboard players get @s sculk_form_timer

bossbar add sculk_form_timer "Sculk form"
bossbar set minecraft:sculk_form_timer players @a[tag=sculk_form]
bossbar set minecraft:sculk_form_timer max 300
bossbar set minecraft:sculk_form_timer color blue

execute as @e[tag=sculk_form] if score @s sculk_ultimate_detector matches 1 run attribute @s minecraft:attack_damage base set 7
execute as @e[tag=sculk_form] if score @s sculk_ultimate_detector matches 1 run attribute @s minecraft:max_health base set 40
execute as @e[tag=sculk_form] if score @s sculk_ultimate_detector matches 1 run attribute @s minecraft:movement_speed base set 0.2

execute as @e[tag=sculk_form] if score @s sculk_ultimate_detector matches 1 run playsound minecraft:entity.warden.heartbeat master @a ~ ~ ~ 2

execute if score @a[limit=1] sculk_ultimate_detector matches 1 run scoreboard players remove @a[tag=sculk_class, limit=1] sculk_form_timer 1

execute as @e[scores={sculk_form_timer=..0}] as @e[tag=sculk_form] run attribute @s minecraft:movement_speed base reset 
execute as @e[scores={sculk_form_timer=..0}] as @e[tag=sculk_form] run attribute @s minecraft:max_health base reset 
execute as @e[scores={sculk_form_timer=..0}] as @e[tag=sculk_form] run attribute @s minecraft:attack_damage base reset 

execute as @e[scores={sculk_form_timer=..0}] as @e[tag=sculk_form] run tag @s remove sculk_form

execute as @e[scores={sculk_form_timer=..0}] run scoreboard players set @s sculk_ultimate_detector 0

#Life Ability Cooldown
execute as @a[tag=life_class] run scoreboard players add @a[tag=life_class] life_ability_cooldown 1

execute as @a[tag=life_class,scores={life_ability_cooldown=1..20}] run title @s actionbar "On Cooldown (10)"
execute as @a[tag=life_class,scores={life_ability_cooldown=21..40}] run title @s actionbar "On Cooldown (9)"
execute as @a[tag=life_class,scores={life_ability_cooldown=41..60}] run title @s actionbar "On Cooldown (8)"
execute as @a[tag=life_class,scores={life_ability_cooldown=61..80}] run title @s actionbar "On Cooldown (7)"
execute as @a[tag=life_class,scores={life_ability_cooldown=81..100}] run title @s actionbar "On Cooldown (6)"
execute as @a[tag=life_class,scores={life_ability_cooldown=101..120}] run title @s actionbar "On Cooldown (5)"
execute as @a[tag=life_class,scores={life_ability_cooldown=121..140}] run title @s actionbar "On Cooldown (4)"
execute as @a[tag=life_class,scores={life_ability_cooldown=141..160}] run title @s actionbar "On Cooldown (3)"
execute as @a[tag=life_class,scores={life_ability_cooldown=161..180}] run title @s actionbar "On Cooldown (2)"
execute as @a[tag=life_class,scores={life_ability_cooldown=181..199}] run title @s actionbar "On Cooldown (1)"
execute as @a[tag=life_class,scores={life_ability_cooldown=200..}] run title @s actionbar "Ready to use"

#Life Ultimate Cooldown
execute as @a[tag=life_class] run scoreboard players add @s[tag=life_class] life_ultimate_cooldown 1

execute as @a[tag=life_class] store result bossbar minecraft:life_ultimate_cooldown value run scoreboard players get @s life_ultimate_cooldown

execute as @a[tag=life_class,scores={life_ultimate_cooldown=900}] at @s run playsound minecraft:entity.wither.spawn master @s ~ ~ ~ 1 1
execute as @a[tag=life_class,scores={life_ultimate_cooldown=900}] at @s run bossbar set minecraft:life_ultimate_cooldown color pink

execute if score @a[limit=1] life_ultimate_detector matches 1 run scoreboard players remove @a[tag=life_class, limit=1] life_ultimate_timer 1

execute as @e[scores={life_ultimate_timer=..0}] as @e[tag=life_steal] run attribute @s minecraft:max_health base reset

execute as @e[scores={life_ultimate_timer=..0}] run scoreboard players set @s life_ultimate_detector 0

#Metal Ability Cooldown
execute as @a[tag=metal_class] run scoreboard players add @a[tag=metal_class] metal_ability_cooldown 1

execute as @a[tag=metal_class,scores={metal_ability_cooldown=1..20}] run title @s actionbar "On Cooldown (10)"
execute as @a[tag=metal_class,scores={metal_ability_cooldown=21..40}] run title @s actionbar "On Cooldown (9)"
execute as @a[tag=metal_class,scores={metal_ability_cooldown=41..60}] run title @s actionbar "On Cooldown (8)"
execute as @a[tag=metal_class,scores={metal_ability_cooldown=61..80}] run title @s actionbar "On Cooldown (7)"
execute as @a[tag=metal_class,scores={metal_ability_cooldown=81..100}] run title @s actionbar "On Cooldown (6)"
execute as @a[tag=metal_class,scores={metal_ability_cooldown=101..120}] run title @s actionbar "On Cooldown (5)"
execute as @a[tag=metal_class,scores={metal_ability_cooldown=121..140}] run title @s actionbar "On Cooldown (4)"
execute as @a[tag=metal_class,scores={metal_ability_cooldown=141..160}] run title @s actionbar "On Cooldown (3)"
execute as @a[tag=metal_class,scores={metal_ability_cooldown=161..180}] run title @s actionbar "On Cooldown (2)"
execute as @a[tag=metal_class,scores={metal_ability_cooldown=181..199}] run title @s actionbar "On Cooldown (1)"
execute as @a[tag=metal_class,scores={metal_ability_cooldown=200..}] run title @s actionbar "Ready to use"

#Metal Ultimate Cooldown
execute as @a[tag=metal_class] run scoreboard players add @a[tag=metal_class] metal_ultimate_cooldown 1

execute as @a[tag=metal_class] store result bossbar minecraft:metal_ultimate_cooldown value run scoreboard players get @s metal_ultimate_cooldown

execute as @a[tag=metal_class,scores={metal_ultimate_cooldown=1200}] at @s run playsound minecraft:entity.wither.spawn master @s ~ ~ ~ 1 1
execute as @a[tag=metal_class,scores={metal_ultimate_cooldown=1200}] at @s run bossbar set minecraft:metal_ultimate_cooldown color white

execute as @a[tag=metal_class] store result bossbar minecraft:metal_form_timer value run scoreboard players get @s metal_form_timer

bossbar add metal_form_timer "Metal form"
bossbar set minecraft:metal_form_timer players @a[tag=metal_form]
bossbar set minecraft:metal_form_timer max 200
bossbar set minecraft:metal_form_timer color white

execute as @e[tag=metal_form] if score @s metal_ultimate_detector matches 1 run attribute @s minecraft:knockback_resistance base set 1

execute as @e[tag=metal_form] if score @s metal_ultimate_detector matches 1 run playsound minecraft:entity.warden.heartbeat master @a ~ ~ ~ 2


execute if score @a[limit=1] metal_ultimate_detector matches 1 run scoreboard players remove @a[tag=metal_class, limit=1] metal_form_timer 1

execute as @e[scores={metal_form_timer=..0}] as @e[tag=metal_form] run attribute @s minecraft:knockback_resistance base reset 

execute as @e[scores={metal_form_timer=..0}] as @e[tag=metal_form] run tag @s remove metal_form

execute as @e[scores={metal_form_timer=..0}] run scoreboard players set @s metal_ultimate_detector 0

#Oceanic Passive
execute as @e[tag=oceanic_class] run effect give @s minecraft:dolphins_grace 5 2
execute as @e[tag=oceanic_class] run effect give @s minecraft:conduit_power 5 2

#Oceanic Ability Cooldown
execute as @a[tag=oceanic_class] run scoreboard players add @a[tag=oceanic_class] oceanic_ability_cooldown 1

execute as @a[tag=oceanic_class,scores={oceanic_ability_cooldown=1..20}] run title @s actionbar "On Cooldown (10)"
execute as @a[tag=oceanic_class,scores={oceanic_ability_cooldown=21..40}] run title @s actionbar "On Cooldown (9)"
execute as @a[tag=oceanic_class,scores={oceanic_ability_cooldown=41..60}] run title @s actionbar "On Cooldown (8)"
execute as @a[tag=oceanic_class,scores={oceanic_ability_cooldown=61..80}] run title @s actionbar "On Cooldown (7)"
execute as @a[tag=oceanic_class,scores={oceanic_ability_cooldown=81..100}] run title @s actionbar "On Cooldown (6)"
execute as @a[tag=oceanic_class,scores={oceanic_ability_cooldown=101..120}] run title @s actionbar "On Cooldown (5)"
execute as @a[tag=oceanic_class,scores={oceanic_ability_cooldown=121..140}] run title @s actionbar "On Cooldown (4)"
execute as @a[tag=oceanic_class,scores={oceanic_ability_cooldown=141..160}] run title @s actionbar "On Cooldown (3)"
execute as @a[tag=oceanic_class,scores={oceanic_ability_cooldown=161..180}] run title @s actionbar "On Cooldown (2)"
execute as @a[tag=oceanic_class,scores={oceanic_ability_cooldown=181..199}] run title @s actionbar "On Cooldown (1)"
execute as @a[tag=oceanic_class,scores={oceanic_ability_cooldown=200..}] run title @s actionbar "Ready to use"

#Oceanic Ultimate Cooldown
execute as @a[tag=oceanic_class] run scoreboard players add @s[tag=oceanic_class] oceanic_ultimate_cooldown 1

execute as @a[tag=oceanic_class] store result bossbar minecraft:oceanic_ultimate_cooldown value run scoreboard players get @s oceanic_ultimate_cooldown

execute as @a[tag=oceanic_class,scores={oceanic_ultimate_cooldown=900}] at @s run playsound minecraft:entity.wither.spawn master @s ~ ~ ~ 1 1
execute as @a[tag=oceanic_class,scores={oceanic_ultimate_cooldown=900}] at @s run bossbar set minecraft:oceanic_ultimate_cooldown color blue

execute if score @a[limit=1] oceanic_ultimate_detector matches 1 run scoreboard players remove @a[tag=oceanic_class, limit=1] oceanic_ultimate_timer 1

execute as @e[scores={oceanic_ultimate_timer=..0}] as @e[tag=oceanic_slow] run attribute @s minecraft:movement_speed base reset

execute as @e[scores={oceanic_ultimate_timer=..0}] run scoreboard players set @s oceanic_ultimate_detector 0