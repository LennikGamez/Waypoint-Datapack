
execute store result score @s ld.wp.handempty run function waypoints:conditions/selectedslot-empty

# if selected item slot is empty
execute if score @s ld.wp.handempty matches 1 run item replace entity @s weapon.mainhand with writable_book[custom_name='{"color":"green","text":"Name your waypoint"}',lore=['{"color":"dark_blue","italic":true,"text":"Sign the book with the name you want to have for your waypoint"}'],custom_data={waypoint_book:1b},writable_book_content={pages:[""]}] 1

# if selected item slot is 
execute if score @s ld.wp.handempty matches 0 run give @s writable_book[custom_name='{"color":"green","text":"Name your waypoint"}',lore=['{"color":"dark_blue","italic":true,"text":"Sign the book with the name you want to have for your waypoint"}'],custom_data={waypoint_book:1b},writable_book_content={pages:[""]}] 1

tellraw @s {"text":"Please sign the book to give your waypoint a name","color":"green"}
tag @s add ld.wp.book-given
scoreboard players reset @s ld.wp.handempty