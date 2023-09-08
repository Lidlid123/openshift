FROM ubuntu:latest

# Install Python and pip
RUN apt-get update && apt-get install -y python3 python3-pip

# Copy the current directory contents into the container at /app
COPY . /app

WORKDIR /app

# Upgrade pip
RUN pip3 install --upgrade pip

# Install the required packages
RUN pip3 install --no-cache-dir -r requirements.txt

# Make port 8080 available to the world outside this container
EXPOSE 8080

# Run app.py when the container launches
CMD ["python3", "app.py"]
