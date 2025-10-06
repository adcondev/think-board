# Dockerfile for Node.js development environment
FROM node:22-alpine

# Metadata
LABEL name="Backend"
LABEL authors="Adrián Constante @ RED2000"
LABEL description="Node.js Dev Environment"

# Set the working directory in the container
WORKDIR /backend

# Copy package.json and package-lock.json
COPY ./package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application code
COPY . .

# Expose the server port
EXPOSE 5000

# Start the development server
CMD ["npm", "run", "dev"]


