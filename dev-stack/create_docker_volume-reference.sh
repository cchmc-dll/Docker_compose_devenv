#!/bin/bash

# Read Credential file containing username and password for mounting network drives
. /home/adminuser/credentials/admincredentials.txt

sharelocation=//external.mount.location/specified/here
addrlocation=exeterna.mount.domain

echo $sharelocation
echo $addrlocation

# Mounting external drive:
# Option 1
# Create docker volume to mount drive using CIFS 
docker volume create \
	--driver local \
	--opt type=cifs \
	--opt device=$sharelocation \
	--opt o=addr=$addrlocation,username=$username,password=$password,file_mode=0777,dir_mode=0777 \
	--name minio_mnt_p
# Option 2
# Mount directly to GPU node and refer to it as volume
#mount -t cifs -o username=$username,password=$password,dir_mode=0777,file_mode=0777,nounix $sharelocation /mnt/test