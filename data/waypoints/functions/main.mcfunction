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



execute as @a[tag=ld.wp.book-given] at @s if items entity @s container.* minecraft:written_book[minecraft:custom_data={waypoint_book:1b}] run function waypoints:interact/book/remove-book

execute as @a[tag=ld.wp.book-given] at @s unless items entity @s container.* minecraft:writable_book[minecraft:custom_data={waypoint_book:1b}] run tag @s remove ld.wp.book-given

execute as @a[tag=!ld.wp.book-given] at @s if items entity @s container.* minecraft:writable_book[minecraft:custom_data={waypoint_book:1b}] run tag @s add ld.wp.book-given
