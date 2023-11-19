# Use an official Node.js runtime as a parent image
FROM node:14.21-alpine as builder

# Set the working directory in the container
WORKDIR /app

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Install app dependencies
RUN npm install

# Bundle app source
COPY . .

# Expose the port on which your app will run
EXPOSE $PORT

# Define the command to run your app
CMD ["node", "index.js"]
