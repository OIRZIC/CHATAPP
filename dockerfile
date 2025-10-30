# Use a base image with C++ build tools
FROM gcc:latest

# Set working directory
WORKDIR /app

# Copy source code to container
COPY . .

# Install any dependencies
RUN apt-get update && apt-get install -y \
    make \
    cmake

# Build the application
RUN g++ -o main main.cpp

# Command to run when container starts
CMD ["./main"]