# Use the node:18 base image
FROM node:18-alpine

# Set the working directory inside the container
WORKDIR /app

# Copy the package.json and package-lock.json files to the container
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the application files to the container
COPY . .

# Copy the config.json file to the container
COPY config.json .

# Expose the desired port
EXPOSE 3001

# Start the application
CMD ["node", "index.js"]
