gamerule doImmediateRespawn true
scoreboard objectives add keep_inventory_open_dialog trigger
scoreboard objectives add keep_inventory dummy
scoreboard objectives add Death deathCount
scoreboard players add keep_inventory keep_inventory 0
scoreboard players set 0 keep_inventory 0
scoreboard players set 1 keep_inventory 1
