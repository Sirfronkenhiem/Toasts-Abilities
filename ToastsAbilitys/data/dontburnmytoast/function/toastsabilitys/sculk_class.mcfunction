title @s title {"text":"Sculk Class Selected!","bold":true,"color":"blue"}
execute at @s run playsound ui.toast.challenge_complete

tellraw @s "-----------------------------------------------------"
tellraw @s "Sculk class is a high damage class mainly focused on being the heavy hitter"
tellraw @s " "
tellraw @s "Abilty: Blind and wither people within a 10 block range for 5 seconds"
tellraw @s " "
tellraw @s "Ultimate: Turn into a sculk form and deal extra damage, move faster and have more health, resets after 15 seconds"
tellraw @s " "
tellraw @s "Passive: Deal more attack damage for every 10 levels gains with a cap of 31 (You may need to relog to active this!)"
tellraw @s "-----------------------------------------------------"

tag @s add sculk_class
scoreboard players add @a[tag=sculk_class] sculk_passive_detection 0

#Creating Bossbar
bossbar add sculk_ultimate_cooldown "Ultimate Cooldown"
bossbar set minecraft:sculk_ultimate_cooldown players @a[tag=sculk_class]
bossbar set minecraft:sculk_ultimate_cooldown max 2000
bossbar set minecraft:sculk_ultimate_cooldown color white
