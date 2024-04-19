######## 
# Main # 
######## 

scoreboard players enable @a setWaypoint
scoreboard players enable @a viewWaypoints
scoreboard players enable @a deleteWaypoint


execute as @a unless score @s ld.wp.id = @s ld.wp.id run function waypoints:id/set-id


execute as @a[scores={setWaypoint=1..}] run function waypoints:handles/set-waypoint-handle
execute as @a[scores={viewWaypoints=1..}] run function waypoints:handles/view-waypoints-handle
execute as @a[scores={deleteWaypoint=0..}] run function waypoints:handles/remove-waypoint



execute as @a[tag=ld.wp.book-given] at @s if data entity @s Inventory[{tag:{waypoint_book:1b},id: "minecraft:written_book"}] run function waypoints:interact/book/remove-book

execute as @a[tag=ld.wp.book-given] at @s unless data entity @s Inventory[{tag:{waypoint_book:1b}}] run tag @s remove ld.wp.book-given

execute as @a[tag=!ld.wp.book-given] at @s if data entity @s Inventory[{tag:{waypoint_book:1b}}] run tag @s add ld.wp.book-given
