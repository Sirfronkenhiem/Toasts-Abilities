title @s title {"text":"Metal Class Selected!","bold":true,"color":"gray"}
execute at @s run playsound ui.toast.challenge_complete

tellraw @s "-----------------------------------------------------"
tellraw @s "Metal class uses should mainly be brawling and taking out numbered fights with there high resistance!"
tellraw @s " "
tellraw @s "Abilty: Gain strength 3 for 3 seconds"
tellraw @s " "
tellraw @s "Ultimate: Gain invulnerability to all damage and take no knockback for 10 seconds"
tellraw @s " "
tellraw @s "Passive: You have 3 extra base armour at all time"
tellraw @s "-----------------------------------------------------"

attribute @s minecraft:armor base set 6
tag @s add metal_class

#Creating Bossbar
bossbar add metal_ultimate_cooldown "Ultimate Cooldown"
bossbar set minecraft:metal_ultimate_cooldown players @a[tag=metal_class]
bossbar set minecraft:metal_ultimate_cooldown max 1200
bossbar set minecraft:metal_ultimate_cooldown color white
