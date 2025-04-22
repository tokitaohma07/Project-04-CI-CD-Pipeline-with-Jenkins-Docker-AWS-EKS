# python base image
FROM python:3.11-slim

# set working directory
WORKDIR /app

# copy files
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY app.py .

# expose the port
EXPOSE 5000

# run the app
CMD ["python", "app.py"]