FROM mongo:8-noble

LABEL name="Database"
LABEL authors="Adrián Constante @ RED2000"
LABEL description="MongoDB Dev Environment"

# Set the working directory in the container
WORKDIR /database

# Expose the MongoDB port
EXPOSE 27017

# Run MongoDB server
RUN mongosh --version

# Check MongoDB version
CMD ["mongod"]
