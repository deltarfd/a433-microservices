# Use the official Node.js 14 image as the base image.
FROM node:14

# Set the working directory inside the container to /app.
WORKDIR /app

# Copy the current directory (containing your application code) into the container at /app.
COPY . /app

# Set environment variables. In this case, setting NODE_ENV to 'production' and DB_HOST to 'item-db'.
ENV NODE_ENV=production DB_HOST=item-db

# Install production dependencies and run the build process.
# The '--unsafe-perm' flag is used to run npm with root privileges, necessary for certain packages.
RUN npm install --production --unsafe-perm && npm run build

# Expose port 8080 to the outside world, indicating that the application will listen on this port.
EXPOSE 8080

# Specify the command to run your application when the container starts.
CMD ["npm", "start"]