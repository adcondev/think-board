# Last Node.js Docker image
# pull: download the image from Docker Hub
# Node.js and MongoDB images
docker pull node:22-alpine
docker pull mongo:8-noble

# Create a Node.js container and begin a shell session
# -it: interactive terminal
# --rm: remove the container when it exits
# --entrypoint sh: override the default entrypoint to use sh shell
# -p: port mapping host:container
# --name: name the container
# sh: start a shell session
docker run --rm -p 3000:3000 --name nodejs --entrypoint sh node:22-alpine -c `
"echo 'Node and Npm Version:' && node -v && npm -v"
docker run --rm -p 27017:27017 --name mongodb --entrypoint sh mongo:8-noble -c `
"echo 'MongoDB Version:' && mongod --version"

# Verify versions
# node -v "22.20.0 or later"
# npm -v "10.9.3 or later"
# mongod --version "8.0.14 or later"
