
#!/bin/bash

path="$1"
echo "$path"

find $path -mtime +30 
