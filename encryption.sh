#!/bin/bash

echo -n 'Enter the file to be encrypted: '

read -r Encryt_file

# Encryption

gpg -c "$Encrypt_file"
echo 'File encrypted successfully. Encrypted file: ${Encrypt_file}.gpg'
echo 'Goodbye !'
