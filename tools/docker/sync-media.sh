#!/usr/bin/env bash

echo "This will sync all the media files to your local machine."
echo "When executed for the first time, this process can take up to several hours, depending on your connection quality (~3.4GB of data)."
echo "Subsequent runs will complete in seconds/minutes."

read -r -p "Are you sure you want to continue? [y/N] " response
if [[ "$response" =~ ^([yY][eE][sS]|[yY])+$ ]]
then
    docker-compose run --rm --entrypoint "/code/scripts/refresh-category-images.sh" mf2-com-sync
    docker-compose run --rm --entrypoint "/code/scripts/refresh-product-images.sh" mf2-com-sync
else
    exit 0
fi
