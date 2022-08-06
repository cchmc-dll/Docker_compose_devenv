#!/bin/bash

# Read Credential file for mounting network drives
# For DGX
. /home/somd7w/credentials/somd7w.txt

sharelocation=//rds6.chmccorp.cchmc.org/IRC-8/AI-ARC-STORE/minio/production
addrlocation=rds6.chmccorp.cchmc.org

echo $sharelocation
echo $addrlocation

# For unmounted volumes
# Create docker volume to mounted CIFS drive 
docker volume create \
	--driver local \
	--opt type=cifs \
	--opt device=$sharelocation \
	--opt o=addr=$addrlocation,username=$username,password=$password,file_mode=0777,dir_mode=0777 \
	--name minio_mnt_p

# For mounted volumes
#mount -t cifs -o username=$username,password=$password,dir_mode=0777,file_mode=0777,nounix $sharelocation /mnt/test