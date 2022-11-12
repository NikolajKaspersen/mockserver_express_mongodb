#! /bin/bash

read -p "Import data (yes/no)" data

echo $data

if [[ "$data" = "y" ||  "$data" = "yes" ]]; 
then
	docker container exec server node data/import-dev-data.js --import
else
	docker container exec server node data/import-dev-data.js --delete
fi
