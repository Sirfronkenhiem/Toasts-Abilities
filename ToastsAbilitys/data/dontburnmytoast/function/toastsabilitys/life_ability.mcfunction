#If working
execute if score @s life_ability_cooldown matches 200.. run execute as @s run effect give @s minecraft:regeneration 3 4


execute if score @s life_ability_cooldown matches 200.. run particle minecraft:crimson_spore ~ ~ ~ 0 0 0 0.5 50
execute if score @s life_ability_cooldown matches 200.. run particle dust{color:[0.93,0.64,0.89],scale:2} ~ ~ ~ 0 0 0 2 50

execute if score @s life_ability_cooldown matches 200.. run playsound minecraft:block.trial_spawner.about_to_spawn_item
execute if score @s life_ability_cooldown matches 200.. run playsound minecraft:block.note_block.bell

execute if score @s life_ability_cooldown matches 200.. run scoreboard players set @s life_ability_cooldown 0

#If on cooldown
execute if score @s life_ability_cooldown matches ..200 run playsound minecraft:block.lava.pop master DontBurnMyToast ~ ~ ~ 2 1
