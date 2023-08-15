# Use an official Python runtime as a parent image
FROM python:3.9-slim-buster

# Set the working directory in the container to /app
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install any needed packages specified in requirements.txt
RUN pip install --upgrade pip
RUN pip install --no-cache-dir -r requirements.txt

# Make port 8080 available to the world outside this container
# EXPOSE 8080

# Run random.py when the container launches. 
# FastAPI runs on an ASGI server like uvicorn and gunicorn 
# CMD ["uvicorn", "random:app", "--host", "0.0.0.0", "--port", "8080"]
# CMD ["python", "openai_api.py", "--cpu-only"]

CMD ["python" "openai_api.py" "--quantization-name" "nf4"]