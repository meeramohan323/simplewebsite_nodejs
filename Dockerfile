# Use Node.js base image
FROM node:14

# Set working directory
WORKDIR /usr/src/app

# Copy package.json and install dependencies
COPY package*.json ./
RUN npm install

# Copy all app files to the container
COPY . .

# Expose port
EXPOSE 3000

# Start the application
CMD ["node", "app.js"]
