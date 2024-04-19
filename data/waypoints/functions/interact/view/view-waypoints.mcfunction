execute unless score @s ld.wp.view.index = @s ld.wp.view.index run scoreboard players set @s ld.wp.view.index 0
# iterate waypoints
function waypoints:db/select-player with entity @s
execute store result storage ld.wp:db Input.viewIndex int 1 run scoreboard players get @s ld.wp.view.index

execute store result score @s ld.wp.view.index run function waypoints:interact/view/render-waypoint with storage ld.wp:db Input
execute if score @s ld.wp.view.index matches -1 run scoreboard players reset @s viewWaypoints
execute if score @s ld.wp.view.index matches -1 run tellraw @s {"text":"[new]","bold":true,"color":"green","clickEvent":{"action":"run_command","value":"/trigger setWaypoint"}, "hoverEvent": {"action": "show_text", "contents": {"text": "set waypoint", "bold": true, "color": "green"}}}

scoreboard players add @s ld.wp.view.index 1