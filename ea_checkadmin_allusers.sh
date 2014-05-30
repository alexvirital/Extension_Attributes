#!/bin/bash

allUsers=$(dscl . list /Users UniqueID | awk '$2 > 500 { print $1 }')
checkAdmin=$(dseditgroup -o checkmember -m ${u} admin | awk '/yes/ { print $1 }')

for u in ${allUsers}; do
	if [[ ${checkAdmin} == 'yes' ]]
		then echo "<result>admin enabled</result>"
	    else echo "<result>admin disabled</result>"
	fi
done