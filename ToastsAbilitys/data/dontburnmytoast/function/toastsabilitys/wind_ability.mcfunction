#If working
execute if score @s wind_ability_cooldown matches 100.. run effect give @s minecraft:levitation 1 20

execute if score @s wind_ability_cooldown matches 100.. run particle minecraft:cloud ~ ~ ~ 0 0 0 0.3 75
execute if score @s wind_ability_cooldown matches 100.. run particle minecraft:gust ~ ~ ~ 0 0 0 10 10
execute if score @s wind_ability_cooldown matches 100.. run particle minecraft:dust_plume ~ ~ ~ 0 0 0 0.1 10

execute if score @s wind_ability_cooldown matches 100.. run playsound minecraft:entity.wind_charge.wind_burst master @a ~ ~ ~ 2 1

execute if score @s wind_ability_cooldown matches 100.. run scoreboard players set @s wind_ability_cooldown 0

#If on cooldown
execute if score @s wind_ability_cooldown matches ..100 run playsound minecraft:block.lava.pop master DontBurnMyToast ~ ~ ~ 2 1
