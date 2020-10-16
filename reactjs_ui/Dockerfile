# ReactJS UI

# Download / pulls the newest version of NodeJS
FROM node:latest
# Creates the working directory in our docker container.
WORKDIR /app
# clone the project in the working directory # Install all the dependencies & nstall Nodemon globally
RUN git clone https://github.com/ottokafka/docker_nodejs_mongodb.git && cd docker_nodejs_mongodb && git checkout react_node_mongo_mysql && npm install && npm install -g react-scripts
# Our app runs on port 3000, so we will use EXPOSE to bind it to the docker container to allow us to access it from localhost:3000 
EXPOSE 3000
# Lastly we run: start react in development mode
CMD ["npm", "run", "start"]