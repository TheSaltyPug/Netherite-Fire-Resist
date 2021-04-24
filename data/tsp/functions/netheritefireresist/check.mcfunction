#> tsp:netheritefireresist/check
# 
# This is the "main" function, that will run once every 11 ticks
# Since we do not need this function to run every tick, we just reshedule it at
# the end of this one.

# Check for players wearing a netherite helmet. Then, check subsequent armors
execute as @a[nbt={Inventory:[{Slot:103b,id:"minecraft:netherite_helmet"},{Slot:102b,id:"minecraft:netherite_chestplate"},{Slot:101b,id:"minecraft:netherite_leggings"},{Slot:100b,id:"minecraft:netherite_boots"}]}] if entity @s[nbt={Fire:-20s}] run effect give @s fire_resistance 5 0 true

# Schedule our check function to run again, because it is not running every tick
schedule function tsp:netheritefireresist/check 11t
