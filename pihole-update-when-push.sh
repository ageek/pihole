#!/bin/bash

check=$(curl -s http://localhost/admin/index.php|grep -q 'update available')

#check if update is available, then update
if ! [[ $? -eq 0 ]]
then 
	echo "$(date): Update available, going to run pihole -up ..."
	#run pihole -up
	/usr/local/bin/pihole -up
else 
	echo "No updates for : $(date) !!" 

fi



