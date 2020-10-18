# ReactJS UI

# Download / pulls the newest version of NodeJS
FROM node:latest
# Creates the working directory in our docker container.
WORKDIR /app
# copy everything from your current directory into docker container
COPY . /server
# Install all the dependencies 
RUN npm install react react-dom react-scripts 
# Our app runs on port 3000, so we will use EXPOSE to bind it to the docker container to allow us to access it from localhost:3000 
EXPOSE 3000
# Lastly we run: start react in development mode
CMD ["npm", "start"]