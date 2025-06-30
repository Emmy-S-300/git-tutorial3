# Use official Python image
FROM python:3.10-slim

ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1
#set working directory
WORKDIR /app

#copy app files
COPY requirements.txt /app/
RUN pip install --upgrade pip \
    && pip install -r requirements.txt

COPY . /app/

# Expose porst Flask runs on
EXPOSE 8000

#run the application
CMD ["python", "manage.py", "runserver"]
