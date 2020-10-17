# NodeJS 

# Download / pulls the newest version of NodeJS
FROM node:latest
# Creates the working directory in our docker container.
WORKDIR /server
# copy the project from host to docker
COPY . /server
# switch to mongodb auto import branch & install dependecys
RUN git checkout mongodb_auto_import && npm install && npm install -g nodemon
# NodeJS, MongoDB: Our app runs on port 4000, so we will use EXPOSE to bind it to the docker container to allow us to access it from localhost:4000 
EXPOSE 4000
# Lastly we run: nodemon app.js with nodemon allow us to hot-reload our changes
CMD ["nodemon", "server.js"]