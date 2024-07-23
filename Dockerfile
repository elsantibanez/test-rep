FROM ubuntu:latest

# Update and install necessary packages
RUN apt-get update && \
    apt-get install -y python3 python3-pip git && \
    apt-get clean

# Install PyYAML package
RUN pip3 install PyYAML

# Create an app directory
RUN mkdir -p /app

# Copy the Python script to /app
COPY travel_calculator.py /app/travel_calculator.py

# Copy the entrypoint script to /usr/bin and ensure it is executable
COPY entrypoint.sh /usr/bin/entrypoint.sh
RUN chmod +x /usr/bin/entrypoint.sh

# Set the entrypoint
ENTRYPOINT [ "/usr/bin/entrypoint.sh" ]
