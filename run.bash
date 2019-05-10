#!/bin/env bash
source .env

VOLUMES="--volume $WORKDIR:/$VOLUME --volume $OUTPUTDIR:/$OUTPUT_VOLUME"
echo $VOLUMES
docker run -it $VOLUMES	--name $CONTAINER --rm $TAG
