# try-docker-python-basic
> 🐳 A pretty simple try on Docker with Python

# Motivation
Learn more about Docker.
Based on: [Gael Thomas, A beginner's guide to Docker](https://medium.freecodecamp.org/a-beginners-guide-to-docker-how-to-create-your-first-docker-application-cc03de9b639f)

# Running the Docker Container
In order to accomplish the steps ahead successfully, you must install Docker first.
[Docker Official Website](https://www.docker.com/get-started)

```bash
# from repository root directory
# for this README I will use: "try-docker"
# docker build -t try-docker .
docker build -t <name your image> .
```

This command will setup the image.
You can check if the image was loaded successfully using:

```bash
docker image ls

# will print
REPOSITORY          TAG                 IMAGE ID            CREATED             SIZE
try-docker          latest              c023353d1a52        56 seconds ago      929MB
python              latest              59a8c21b72d4        3 weeks ago         929MB
```

Then feel free to run the Docker image as follows:
```bash
docker run try-docker
```

### Commands for Docker

Command | Description
------------ | -------------
`docker run <image name>` | Starts a Docker container
`docker images ls -a` | Prints loaded images
`docker container ls -a` | Prints loaded containers
`docker stop <container name>` | Stops a Docker container
`docker stop $(docker ps -a -q)` | Stop all containers
`docker logs <container name>` | Display logs of the specified container
`docker ps -a` | Prints every single Docker container
`docker rmi <image name>` | Deletes the specified Docker image
`docker images purge` | Removes dangling images
`docker image rm $(docker images -a -q)` | Deletes all the images
`docker rm $(docker ps -a -q)` | Delete all containers
`docker system prune --all` | Remove unused data. Remove all unused images not just dangling ones
`docker system prune --volumes` | Prune volumes
`docker system prune --all --force --volumes` | Removes everything (💣)
