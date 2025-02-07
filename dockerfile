#This is a comment in Dockerfile
#General Syntax
# INSTRUCTION arguments

# Use an official Python runtime as the base image
FROM python:3.12-rc-bookworm

# Set the working directory in the container to /app (/app is default for Flask App)
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install the required packages (present in requirements.txt or can write here)
RUN pip install --no-cache-dir -r requirements.txt

# Set the environment variable for Flask
ENV FLASK_APP=app.py

# Run the command to start the Flask application
CMD ["flask", "run", "--host=0.0.0.0"]

# CMD instruction is the command to be run by default
# If more CMD present only last one will run.