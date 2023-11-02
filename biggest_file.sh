
#!/bin/bash

echo 'This program is for getting the 10 biggest file in the file system passed via positional argument'

path="$1"
echo "$path"
du -ah "$path" | sort -hr | head -n 10 > /tmp/filesize.txt
echo "This is the list of the biggest files in the file system $path"

