
scoreboard players operation @s ld.wp.id = #ld.wp.currentid ld.wp.id

function waypoints:db/register-player

scoreboard players add #ld.wp.currentid ld.wp.id 1
scoreboard players set @s deleteWaypoint -1

