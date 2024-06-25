# Dockerfile
FROM python:3.9

# Set working directory inside the container
WORKDIR /app

# Copy requirements.txt file and install dependencies
COPY app/requirements.txt requirements.txt
RUN pip install -r requirements.txt

# Copy the rest of the application code
COPY app/. .

# Expose port 80 for the FastAPI application
EXPOSE 80

# Command to run the FastAPI application using Uvicorn
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "80"]
