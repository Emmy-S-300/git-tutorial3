# Use official Python image
FROM python:3.10-slim

#set working directory
WORKDIR /app

#copy app files
COPY requirements.txt requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

# Expose porst Flask runs on
Expose 5000

#run the application
CMD ["python", "app.py"]
