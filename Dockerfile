FROM ubuntu:16.04

# Install Python and pip
RUN apt-get update && apt-get install -y python python-pip

# Copy the current directory contents into the container at /app
COPY . /app

WORKDIR /app

# Install the required packages
RUN pip install --no-cache-dir -r requirements.txt

# Fix for markupsafe module issue
RUN pip install --upgrade --force-reinstall markupsafe

# Make port 8080 available to the world outside this container
EXPOSE 8080

# Run app.py when the container launches
CMD ["python", "app.py"]
