# Download / pulls the newest version of NodeJS
FROM node:latest
# Creates the working directory in our docker container.
WORKDIR /app
# add `/app/node_modules/.bin` to $PATH
ENV PATH /app/node_modules/.bin:$PATH
# clone the project in the working directory
RUN git clone https://github.com/ottokafka/docker_nodejs_mongodb.git
# Install all the dependencies & nstall Nodemon globally
RUN npm install && npm install -g nodemon react-scripts
# NodeJS, mySQL, MongoDB: Our app runs on port 4000, so we will use EXPOSE to bind it to the docker container to allow us to access it from localhost:4000 
EXPOSE 4001
# Lastly we run: nodemon app.js with nodemon allow us to hot-reload our changes
CMD ["nodemon", "app.js"]