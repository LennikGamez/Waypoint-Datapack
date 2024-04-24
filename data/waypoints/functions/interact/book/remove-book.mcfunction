
execute store result storage ld.wp:db Input.id int 1 run scoreboard players get @s ld.wp.id
data modify storage ld.wp:db Input.wp_name set from entity @s Inventory[{id:"minecraft:written_book", components:{"minecraft:custom_data":{waypoint_book:1b}}}].components.minecraft:written_book_content.title.raw

function waypoints:interact/set-waypoint with storage ld.wp:db Input

clear @s written_book[custom_data={waypoint_book:1b}]
tag @s remove ld.wp.book-given
