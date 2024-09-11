# Use an official Python runtime as the base image
FROM python:3.12.6-slim

# Set the working directory in the container
WORKDIR /app

# Copy the requirements file into the container
COPY requirements.txt .

# Install the dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of the application code into the container
COPY . .

# Expose the port that the application will run on
EXPOSE 8000

# Define the command to run the application
CMD ["uvicorn", "app.main:app","--host", "0.0.0.0","--port", "8000"]