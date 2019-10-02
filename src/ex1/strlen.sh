#!/bin/sh

for var in "$@"
do

	if [ "${#var}" -ge 2 ]
		then
	echo "\"$var\" counts ${#var} characters"
		else [ "${#var}" -lt 2 ]
	echo "\"$var\" counts ${#var} character"
	fi
done

