# Use the official Python image
FROM python:3.10

# Set the working directory in the container
WORKDIR /app

# Copy the application code
COPY . /app

# Update pip
RUN pip install --upgrade pip

# Install dependencies
RUN pip install --no-cache-dir fastapi uvicorn sqlalchemy

# Expose the application port
EXPOSE 8000

# Command to run the application
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000"]
