# Download / pulls the newest version of NodeJS
FROM node:latest
# Creates the working directory in our docker container.
WORKDIR /app
# copy the package.json into the Working directory.
COPY package.json /app
# MOST important install Nodemon globally !!!
RUN npm install -g nodemon
# Install all the dependencies
RUN npm install
# copies our application code into the WORKDIR 
COPY . /app
# Our app runs on port 4000, so we will use EXPOSE to bind it to the docker container to allow us to access it from localhost:4000
EXPOSE 4000
# Lastly we run: nodemon app.js with nodemon allow us to hot-reload our changes
CMD ["nodemon", "app.js"]