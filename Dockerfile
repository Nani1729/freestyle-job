# Start from Amazon Linux base image
FROM amazonlinux:latest

# Update packages and install necessary tools
RUN yum update -y && \
    yum install -y tar gzip wget

# Install Docker
RUN yum install -y docker

# Install OpenJDK 17
RUN amazon-linux-extras install java-openjdk17

# Install Maven
RUN wget https://apache.osuosl.org/maven/maven-3/3.8.4/binaries/apache-maven-3.8.4-bin.tar.gz && \
    tar -zxvf apache-maven-3.8.4-bin.tar.gz && \
    mv apache-maven-3.8.4 /usr/local/ && \
    rm apache-maven-3.8.4-bin.tar.gz

# Set Maven environment variables
ENV MAVEN_HOME=/usr/local/apache-maven-3.8.4
ENV PATH=$MAVEN_HOME/bin:$PATH

# Set working directory
WORKDIR /app

# Define default command
CMD ["bash"]
