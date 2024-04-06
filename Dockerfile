# Dockerfile for the first app (solution.js)
# Start from a Node.js image
FROM node:latest

# Set working directory
WORKDIR /app1

# Copy package.json and package-lock.json
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy source code
COPY solution.js .

# Expose port 4000
EXPOSE 4000

# Command to run the application
CMD ["node", "solution.js"]

# Dockerfile for the second app (server.js)
# Start from a Node.js image
FROM node:latest

# Set working directory
WORKDIR /app2

# Copy package.json and package-lock.json
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy source code
COPY server.js .

# Expose port 3000
EXPOSE 3000

# Command to run the application
CMD ["node", "server.js"]