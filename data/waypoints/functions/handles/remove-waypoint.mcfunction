
function waypoints:db/select-player
execute store result storage ld.wp:db Input.viewIndex int 1 run scoreboard players get @s deleteWaypoint

function waypoints:interact/remove-waypoint with storage ld.wp:db Input

scoreboard players set @s deleteWaypoint -1