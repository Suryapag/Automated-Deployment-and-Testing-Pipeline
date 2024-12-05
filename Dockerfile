# Use an appropriate base image
FROM python:3.10-slim

# Set the working directory in the container
WORKDIR /app

# Copy the requirements.txt into the container
COPY requirements.txt /app/requirements.txt

# Install dependencies
RUN pip install --no-cache-dir -r /app/requirements.txt

# Copy the rest of the application files into the container
COPY . /app

# Set the entrypoint for the container
CMD ["python", "run.py"]
