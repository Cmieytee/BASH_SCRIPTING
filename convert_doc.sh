#!/bin/bash

# Checking if the unoconv is intalled

if ! command -v unoconv &> /dev/null; then
echo "unoconv is not installed. PLease install it."
exit 1
fi

# Get the input directory and output directory from the user

echo -n'Path to the input directory:'
read -r input_dir
echo -n'Path to the output directory:'
read -r output_dir

# To convert the file from doc to pdf

for file in '$input_dir'/*.doc*; do 
if [ -f "$file" ]; then
filename = $(basename "file")
extension ="${filename##*.}"
filename_noext="${filename%.*}"
output_file="$output_dir/$filename_noext.pdf"



unoconv -f pdf -o "output_dir" "$file"


if [ $? -eq 0]; then
echo "converted $filename to PDF successfully
else 
echo "conversion of $filename to pdf failed
fi
fi
done
