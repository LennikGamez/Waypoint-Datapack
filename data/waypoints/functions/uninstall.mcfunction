scoreboard objectives remove setWaypoint
scoreboard objectives remove viewWaypoints
scoreboard objectives remove deleteWaypoint

scoreboard objectives remove ld.wp.view.index
scoreboard objectives remove ld.wp.id
scoreboard objectives remove ld.wp.handempty

tag @a remove ld.wp.book-given


gamerule sendCommandFeedback true



function waypoints:db/reset

tellraw @s {"text": "Uninstalled", "color": "red", "bold": true}