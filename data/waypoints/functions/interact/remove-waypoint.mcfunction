
$execute unless data storage ld.wp:db Players[{id:$(id)}].waypoints[$(viewIndex)] run tellraw @s {"text":"This waypoint doesn't exist","bold":true,"color":"red"}

$execute if data storage ld.wp:db Players[{id:$(id)}].waypoints[$(viewIndex)] run tellraw @s ["",{"text":"Waypoint ","bold":true,"color":"red"},{"nbt":"Players[{id:$(id)}].waypoints[$(viewIndex)].name","storage":"ld.wp:db", "bold":true, "color":"dark_red"},{"text":" removed!","bold":true,"color":"red"}]
$data remove storage ld.wp:db Players[{id:$(id)}].waypoints[$(viewIndex)]

trigger viewWaypoints