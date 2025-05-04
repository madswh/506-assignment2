#this file was created by ChatGPT
# Use Python 3.11-slim as the base image
FROM python:3.13-slim

# Set the working directory in the container
WORKDIR /assignment2 

# Copy the application files to the container
COPY . /assignment2

#set virtual environment
RUN python3 -m venv venv
# Activate the virtual environment
RUN . venv/bin/activate
# Install pip in the virtual environment
RUN venv/bin/python -m ensurepip --upgrade
# Upgrade pip to the latest version
RUN venv/bin/python -m pip install --upgrade pip
# Install the required Python packages
RUN pip install -r requirements.txt

# Expose port 5000
EXPOSE 5000

# Command to run the application
CMD ["python3", "app.py"]