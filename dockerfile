#this file was created by ChatGPT
# Use Python 3.11-slim as the base image
FROM python:3.11-slim

# Set the working directory in the container
WORKDIR /assignment2 

# Copy the application files to the container
COPY . /assignment2

# Install the required Python packages
RUN pip install --no-cache-dir -r requirements.txt

# Expose port 5000
EXPOSE 5000

# Command to run the application
CMD ["python3", "app.py"]