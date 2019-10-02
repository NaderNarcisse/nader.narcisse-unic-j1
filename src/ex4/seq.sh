#!/bin/sh
FROM=$1
TO=$2
ACTION="$3"
if [ "$ACTION" -eq "+" ];
then
while [ $FROM -le $TO ]
do
  echo -n $FROM " "
  (( FROM++ ))
done
echo ""
else
while [ $FROM -ge $TO ]
do
  echo -n $FROM " "
  (( FROM-- ))
done
echo "
