FROM node:22-alpine

LABEL name="Backend"
LABEL authors="Adrián Constante @ RED2000"
LABEL description="Node.js Dev Environment"

# Set the working directory in the container
WORKDIR /backend

COPY ./package*.json ./

# Install dependencies
RUN npm install

# Copy application code
COPY . .

# Expose the development server port
EXPOSE 5000

# Check Node.js and npm versions
RUN node --version && npm --version

# CMD to keep the container running
CMD ["npm", "run", "dev"]


