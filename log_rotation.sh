
#!/bin/bash
echo "This script deletes files which are older than 30 days"

path="$1"
echo "$path"

find $path -mtime +30 -delete

if [[ $? -eq 0 ]];
then

echo "Files successfully deleted"

else 
echo "Not succesful"
