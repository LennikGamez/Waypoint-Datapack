
$execute unless data storage ld.wp:db Players[{id:$(id)}].waypoints[$(viewIndex)] if score @s ld.wp.view.index matches 0 run tellraw @s {"text":"No waypoints set!","bold":true,"color":"red"}

$execute unless data storage ld.wp:db Players[{id:$(id)}].waypoints[$(viewIndex)] run return -1

$tellraw @a ["",{"text":"[$(viewIndex)] ","bold":true,"color":"dark_green","clickEvent":{"action":"run_command","value":"/trigger deleteWaypoint set $(viewIndex)"},"hoverEvent":{"action":"show_text","contents":[{"text":"[Delete] ","bold":true,"color":"dark_red"} ,{"nbt":"Players[{id:$(id)}].waypoints[$(viewIndex)].name","storage":"ld.wp:db","bold":true,"color":"red"}]}},{"text":"X: ","color":"dark_aqua"},{"nbt":"Players[{id:$(id)}].waypoints[$(viewIndex)].x","storage":"ld.wp:db"},{"text":" Y: ","color":"dark_aqua"},{"nbt":"Players[{id:$(id)}].waypoints[$(viewIndex)].y","storage":"ld.wp:db"},{"text":" Z: ","color":"dark_aqua"},{"nbt":"Players[{id:$(id)}].waypoints[$(viewIndex)].z","storage":"ld.wp:db"}, " -> ",{"nbt":"Players[{id:$(id)}].waypoints[$(viewIndex)].name","storage":"ld.wp:db","bold":true,"color":"dark_green"}]
