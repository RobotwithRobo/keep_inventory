gamerule doImmediateRespawn true
scoreboard players enable @a keep_inventory_open_dialog
execute as @a[scores={keep_inventory_open_dialog=1..}] run function keep_inventory:open_keep_inventory_dialog
execute if score keep_inventory keep_inventory > 0 keep_inventory run gamerule keepInventory true
execute if score keep_inventory keep_inventory = 0 keep_inventory run function keep_inventory:keep_false
execute if score keep_inventory keep_inventory > 0 keep_inventory as @a[scores={Death=1..}] run scoreboard players remove keep_inventory keep_inventory 1
execute as @a[scores={Death=1..}] run tellraw @a [{"text":"Number of keep inventory uses left: ", "color":"red"},{"score":{"name":"keep_inventory","objective":"keep_inventory"}}]
execute as @a[scores={Death=1..}] run scoreboard players reset @a Death