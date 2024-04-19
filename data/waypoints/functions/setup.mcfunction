######### 
# Setup # 
######### 

scoreboard objectives add ld.wp.id dummy
execute unless score #ld.wp.currentid ld.wp.id matches 1.. run scoreboard players set #ld.wp.currentid ld.wp.id 0

function waypoints:db/db-setup


scoreboard objectives add setWaypoint trigger
scoreboard objectives add viewWaypoints trigger
scoreboard objectives add deleteWaypoint trigger

scoreboard objectives add ld.wp.view.index dummy
scoreboard objectives add ld.wp.handempty dummy

gamerule sendCommandFeedback false

say Reloaded! 
