#If working
execute if score @s metal_ability_cooldown matches 200.. run execute as @s run effect give @s minecraft:strength 5 2 true

execute if score @s metal_ability_cooldown matches 200.. run particle minecraft:crit ~ ~ ~ 0 0 0 1 50
execute if score @s metal_ability_cooldown matches 200.. run particle minecraft:infested ~ ~ ~ 0 0 0 0.5 50
execute if score @s metal_ability_cooldown matches 200.. run particle minecraft:smoke ~ ~ ~ 0 0 0 0.05 50

execute if score @s metal_ability_cooldown matches 200.. run playsound minecraft:block.anvil.land
execute if score @s metal_ability_cooldown matches 200.. run playsound minecraft:item.armor.equip_iron

execute if score @s metal_ability_cooldown matches 200.. run scoreboard players set @s metal_ability_cooldown 0

#If on cooldown
execute if score @s metal_ability_cooldown matches ..200 run playsound minecraft:block.lava.pop master DontBurnMyToast ~ ~ ~ 2 1
