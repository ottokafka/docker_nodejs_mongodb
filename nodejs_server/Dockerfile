# Download / pulls the newest version of NodeJS
FROM node:latest
# Creates the working directory in our docker container.
WORKDIR /server 
# copy everything from your current directory into docker container
COPY . /server
# install Nodemon globally!!! Install all the dependencies
RUN npm install -g nodemon && npm install express mongoose --save
# Our app runs on port 4000, so we will use EXPOSE to bind it to the docker container to allow us to access it from localhost:4000
EXPOSE 4000 
# Lastly we run: nodemon app.js with nodemon allow us to hot-reload our changes
CMD ["nodemon", "server.js"]