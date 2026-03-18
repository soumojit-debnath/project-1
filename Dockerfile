# Use official Python 3.10 slim (bookworm = Debian 12, stable)
FROM python:3.10-slim

# Set the working directory
WORKDIR /app

# Copy requirements first (better Docker cache)
COPY requirements.txt .

# Upgrade pip first, then install dependencies
RUN pip install --upgrade pip && \
    pip install --no-cache-dir -r requirements.txt

# Copy rest of application code
COPY . .

# Expose the port FastAPI will run on
EXPOSE 5000

# Command to run the FastAPI app
CMD ["uvicorn", "app:app", "--host", "0.0.0.0", "--port", "5000"]