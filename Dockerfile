# Use the official Python base image
FROM python:3.12

# Set the working directory inside the container
WORKDIR /github/workspace

# Copy the requirements file to the container
COPY requirements.txt .

# Install the Python dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy all the source code to the working directory
COPY . .

# Add the src directory to the PYTHONPATH
ENV PYTHONPATH="${PYTHONPATH}:/github/workspace/src"

# Set the command to execute the main Python script
CMD ["python", "/github/workspace/src/main.py"]
