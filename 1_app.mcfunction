#bridge-file-version: #29
scoreboard players add @e[type=np:deathplate] 1a_count 1
scoreboard players add @e[type=np:deathplate] 1a_a_count 1
 
execute @e[type=np:deathplate,scores={1a_count=2}] ~ ~ ~ tp @s ~ ~0.1 ~
execute @e[type=np:deathplate,scores={1a_count=2}] ~ ~ ~ scoreboard players reset @s 1a_count
 
execute @e[type=np:deathplate,scores={1a_a_count=1}] ~ ~ ~ playanimation @s animation.deathplate.idle control 0
execute @e[type=np:deathplate,scores={1a_a_count=20}] ~ ~ ~ scoreboard players reset @s 1a_a_count
 
execute @e[type=np:deathplate] ~-8 ~ ~-8 execute @e[tag=1_app_end,dx=0,dy=0,dz=0] ~ ~ ~ function 1_app_reset
 
execute @e[type=np:deathplate] ~-8 ~ ~-8 execute @a[tag=player,tag=!op,dx=20,dy=-30,dz=20] ~ ~ ~ function death_zone