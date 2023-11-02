
#!/bin/bash

echo 'Checking disk storage in a Linux based system'

disk_size=$(df -h | grep "/dev/sda3" | awk '{print $5}' | cut -d '%' -f 1)

echo 'Extracted the disk size'

if [ "$disk_size" -gt 80 ]; then
    echo 'Disk is utilized more than 80%, expand disk or delete files soon'
else
    echo 'Disk has enough space'
fi





