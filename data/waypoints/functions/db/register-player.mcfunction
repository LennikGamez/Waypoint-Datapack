
data modify storage ld.wp:db Players append value {id:-1, waypoints:[]}
execute store result storage ld.wp:db Players[-1].id int 1 run scoreboard players get #ld.wp.currentid ld.wp.id