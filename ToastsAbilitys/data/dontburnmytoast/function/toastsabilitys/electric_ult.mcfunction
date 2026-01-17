#If working
execute as @s at @s if score @s electric_ultimate_cooldown matches 600.. run tag @e[distance=..10,tag=!electric_class] add electric_strike
execute as @e[tag=electric_strike] at @s run summon minecraft:lightning_bolt
execute as @e[tag=electric_strike] run damage @s 6 minecraft:out_of_world
execute if score @s electric_ultimate_cooldown matches 600.. run playsound minecraft:block.bell.use master @s ~ ~ ~ 4 0.5

tag @e[tag=electric_strike] remove electric_strike

execute if score @s electric_ultimate_cooldown matches 600.. run bossbar set minecraft:electric_ultimate_cooldown color white
execute if score @s electric_ultimate_cooldown matches 600.. run scoreboard players set @s electric_ultimate_cooldown 0

#If on cooldown
execute if score @s electric_ultimate_cooldown matches ..600 run playsound minecraft:block.lava.pop
