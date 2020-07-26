#!/bin/bash

if [ -z "$1" ];then
	#DOCKER_IMAGE_TAG="tensorflow/tensorflow:latest-gpu-py3-jupyter"
	DOCKER_IMAGE_TAG="tensorflow-custom"
else
	DOCKER_IMAGE_TAG="$1"
fi

PRESENT_DIR=$(pwd)
echo "$DOCKER_IMAGE_TAG"

#docker run --mount type=bind,source=$PRESENT_DIR/project_kia,destination=/tf/project_kia --mount type=bind,source=$PRESENT_DIR/jupyter_notebook,destination=/tf/jupyter_notebook --mount type=bind,source=$PRESENT_DIR/datasets,destination=/tf/datasets --runtime=nvidia -p 8888:8888 -it --rm $DOCKER_IMAGE_TAG
docker run --gpus all --mount type=bind,source=$PRESENT_DIR/project_kia,destination=/tf/project_kia --mount type=bind,source=$PRESENT_DIR/jupyter_notebook,destination=/tf/jupyter_notebook --mount type=bind,source=$PRESENT_DIR/datasets,destination=/tf/datasets -p 8888:8888 -it --rm $DOCKER_IMAGE_TAG
