# NodeJS 

# Download / pulls the newest version of NodeJS
FROM node:latest
# Creates the working directory in our docker container.
WORKDIR /server
# clone the project in the working directory # Install all the dependencies & nstall Nodemon globally
RUN git clone https://github.com/ottokafka/docker_nodejs_mongodb.git && cd docker_nodejs_mongodb && git checkout mongodb_auto_import && npm install && npm install -g nodemon
# NodeJS, MongoDB: Our app runs on port 4000, so we will use EXPOSE to bind it to the docker container to allow us to access it from localhost:4000 
EXPOSE 4000
# Lastly we run: nodemon app.js with nodemon allow us to hot-reload our changes
CMD ["nodemon", "app.js"]