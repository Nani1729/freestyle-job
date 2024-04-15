# Start from Amazon Linux base image
FROM amazonlinux:latest

# Update packages and install necessary tools
RUN yum update -y && \
    yum install -y tar gzip wget

# Install Docker
RUN yum install -y docker

# Install OpenJDK 17
RUN yum install java-17-amazon-corretto-devel -y

# Install Maven
RUN yum install maven

# Set Maven environment variables
# ENV MAVEN_HOME=/usr/local/apache-maven-3.8.4
# ENV PATH=$MAVEN_HOME/bin:$PATH

# Set working directory
WORKDIR /app

# Define default command
CMD ["bash"]
