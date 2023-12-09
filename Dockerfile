# Use a base image with Java installed
FROM openjdk:latest

# Set the working directory in the container
WORKDIR /usr/src/app

# Copy the Java source file into the container
COPY HelloWorld.java .

# Compile the Java source file
RUN javac HelloWorld.java

# Run the compiled Java program
CMD ["java", "HelloWorld"]