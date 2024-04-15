# Use Ubuntu as the base image
FROM ubuntu:latest

# Update package lists and install necessary dependencies
RUN apt-get update && \
    apt-get install -y \
    curl \
    gnupg \
    software-properties-common \
    apt-transport-https \
    ca-certificates \
    wget \
    git

# Install JDK 17
RUN wget -qO - https://adoptopenjdk.jfrog.io/adoptopenjdk/api/gpg/key/public | apt-key add - && \
    add-apt-repository --yes https://adoptopenjdk.jfrog.io/adoptopenjdk/deb/ && \
    apt-get update && \
    apt-get install -y adoptopenjdk-17-hotspot

# Install Maven
RUN apt-get install -y maven

# Install Docker CLI
RUN apt-get update && \
    apt-get install -y \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg-agent \
    software-properties-common && \
    curl -fsSL https://download.docker.com/linux/ubuntu/gpg | apt-key add - && \
    add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" && \
    apt-get update && \
    apt-get install -y docker-ce docker-ce-cli containerd.io

# Cleanup
RUN apt-get clean && \
    rm -rf /var/lib/apt/lists/*

# Set JAVA_HOME environment variable
ENV JAVA_HOME=/usr/lib/jvm/adoptopenjdk-17-hotspot-amd64

# Verify installations
RUN java -version && \
    mvn -version && \
    docker --version

# Default command
CMD ["bash"]
