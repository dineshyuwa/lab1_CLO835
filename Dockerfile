# Use the official Python image from the Docker Hub
FROM python:3.10-slim

# Set the working directory in the container
WORKDIR /app

# Copy the requirements file into the container
COPY . /app

# Install the Python dependencies
RUN pip install --no-cache-dir flask

# Expose the port that the Flask app runs on
EXPOSE 8080

#Define Environment Variable
ENV NAME World

# Define the command to run the application
CMD ["python", "app.py"]
