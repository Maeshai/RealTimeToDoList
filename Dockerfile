# Use an official Node.js image that includes the necessary GLIBC version
FROM node:18

# Create app directory inside the container
WORKDIR /usr/src/app

# Copy package.json and package-lock.json to install dependencies
COPY package*.json ./

# Install the dependencies
RUN npm install

# Copy the rest of the application code to the container
COPY . .

# Expose the port the app will run on
EXPOSE 5000

# Command to run the application
CMD [ "node", "server.js" ]
