FROM ubuntu:20.04

# Update and install necessary packages
RUN apt-get update && \
    apt-get install -y python3 python3-pip git build-essential && \
    python3 -m pip install --no-cache-dir --upgrade pip && \
    pip3 install --no-cache-dir PyYAML && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

# Install PyYAML package
RUN pip3 install --no-cache-dir PyYAML

# Create an app directory
WORKDIR /app

# Copy the Python script to /app
COPY travel_calculator.py .

# Copy the entrypoint script and make it executable
COPY entrypoint.sh /usr/bin/entrypoint.sh
RUN chmod +x /usr/bin/entrypoint.sh

# Set the entrypoint
ENTRYPOINT ["/usr/bin/entrypoint.sh"]
