# Docker Nodejs Mongodb MySQL

Setup up workflow with docker nodejs mongodb

We use nodemon auto reload the docker container after making changes. Otherwise we would have to rebuild the container each time.

Find the tutorial here
[docker nodeJS MongoDB setup](https://medium.com/@ottokafka/docker-nodejs-mongodb-79e2b609aa8a)

### SETUP

git clone project
docker-compose up --build

#### DockerFile

```

# specify a reference image
FROM node:latest
# specify the working directory with our container.
WORKDIR /app
# copy the package.json into the Working directory.
COPY package.json /app
# Install all the dependencies, we can run commands within the container using
RUN npm install -g nodemon 
RUN npm install
# Now we can copy our application code into the working directory.
COPY . /app
# Our app runs on port 4000, so we will use EXPOSE to bind it to the docker container.
EXPOSE 4000
# Finally, we will need to start our app using the CMD command.
CMD ["nodemon", "app.js"]

```

#### docker-compose.yml

```
version: '2'

# Define the services/containers to be run
services:
  my_node_app: #name of your service
    build: ./ # specify the directory of the Dockerfile
    ports:
      - "4000:4000" #specify ports forwarding
    links:
      - database # link this service to the database service
    volumes:
      - ./:/app
    depends_on:
      - database
     
  database: # name of the service
    image: mongo # specify image to build container from

```