
$data modify storage ld.wp:db Players[{id:$(id)}].waypoints append value {x: 0, y: 0, z: 0, name:"$(wp_name)"}

$execute store result storage ld.wp:db Players[{id:$(id)}].waypoints[-1].x int 1 run data get entity @s Pos[0]
$execute store result storage ld.wp:db Players[{id:$(id)}].waypoints[-1].y int 1 run data get entity @s Pos[1]
$execute store result storage ld.wp:db Players[{id:$(id)}].waypoints[-1].z int 1 run data get entity @s Pos[2]

# {"text":"[Waypoint set] ","bold":true,"color":"dark_green"},
$tellraw @s ["",{"text":"X: ","color":"dark_aqua"},{"nbt":"Players[{id:$(id)}].waypoints[-1].x","storage":"ld.wp:db"},{"text":" Y: ","color":"dark_aqua"},{"nbt":"Players[{id:$(id)}].waypoints[-1].y","storage":"ld.wp:db"},{"text":" Z: ","color":"dark_aqua"},{"nbt":"Players[{id:$(id)}].waypoints[-1].z","storage":"ld.wp:db"}," -> ",{"nbt":"Players[{id:$(id)}].waypoints[-1].name","storage":"ld.wp:db","bold":true,"color":"dark_green","clickEvent":{"action":"run_command","value":"/trigger viewWaypoints"},"hoverEvent":{"action":"show_text","contents":[{"text":"view waypoints","color":"dark_aqua"}]}}]
