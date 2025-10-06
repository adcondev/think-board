FROM node:22-alpine

LABEL name="Frontend"
LABEL authors="Adrián Constante @ RED2000"
LABEL description="React Dev Environment"

# Set the working directory in the container
WORKDIR /frontend

# COPY package*.json ./

# Install dependencies
# RUN npm install

# COPY . .

# Expose the server port
EXPOSE 3000

# Check Node.js and npm versions
RUN node --version && npm --version

CMD ["tail", "-f", "/dev/null"]