# Use an official Python runtime as a parent image
FROM python:3.11-slim

# Set the working directory in the container
WORKDIR /app

# Copy requirements.txt and install dependencies
COPY requirements.txt /app/
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of the application code
COPY . /app

# Expose port 5000 for Flask
EXPOSE 5000

# Define environment variable
ENV FLASK_APP=run.py
ENV FLASK_RUN_HOST=0.0.0.0

# Command to run the Flask application
CMD ["flask", "run"]
