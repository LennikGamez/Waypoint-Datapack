
execute store result score @s ld.wp.handempty run function waypoints:conditions/selectedslot-empty

# if selected item slot is empty
execute if score @s ld.wp.handempty matches 1 run item replace entity @s weapon.mainhand with writable_book{display:{Name:'{"text":"Name your waypoint","color":"green"}',Lore:['{"text":"Sign the book with the name you want to have for your waypoint","color":"dark_blue","italic":true}']},waypoint_book:1b,pages:[""]} 1

# if selected item slot is 
execute if score @s ld.wp.handempty matches 0 run give @s writable_book{display:{Name:'{"text":"Name your waypoint","color":"green"}',Lore:['{"text":"Sign the book with the name you want to have for your waypoint","color":"dark_blue","italic":true}']},waypoint_book:1b,pages:[""]} 1

tellraw @s {"text":"Please sign the book to give your waypoint a name","color":"green"}
tag @s add ld.wp.book-given
scoreboard players reset @s ld.wp.handempty