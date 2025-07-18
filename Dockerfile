# Use the official Ubuntu base image
FROM ubuntu

# Update package lists
RUN apt update

# Install Python 3 and pip
RUN apt install python3-pip -y

# Set the working directory inside the container to /app
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install Python dependencies from requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Specify the command to run when the container starts
CMD ["python3", "-m", "flask", "run", "--host=0.0.0.0"]

