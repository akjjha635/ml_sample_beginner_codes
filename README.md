# ML Sample Code for Beginners
## Preparing the Environment

1. Install docker
   `https://docs.docker.com/engine/install/ubuntu/`

2. Build the docker image
   `docker build -t tensorflow-custom:latest .`

3. Run the `run_jupyter.sh`.

The `run_jupyter.sh` automatically mounts the volume to ensure files are accessible in and out of docker container.
