# Dockerfile for React development environment
FROM node:22-alpine

# Metadata
LABEL name="Frontend"
LABEL authors="Adrián Constante @ RED2000"
LABEL description="React Dev Environment"

# Set the working directory in the container
WORKDIR /frontend

# Update package lists
RUN apk update

# Copy package.json and package-lock.json
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application code
COPY . .

# Expose the server port
EXPOSE 3000

CMD ["npm", "run", "dev"]