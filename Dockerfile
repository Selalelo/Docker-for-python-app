#Use an official runtime as a parent image
FROM python:3.9-slim

#Set the working directory
WORKDIR /app

#Copy the current directory contents into the container at /app
COPY . /app

#Install any needed packeages specified in requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

#Make port 80 available to the world outside this container
EXPOSE 80

#Define environment variable
ENV FLASK_APP=app.py
ENV FLASK_RUN_HOST=0.0.0.0
ENV FLASK_RUN_PORT=80

#Run app.py when the container launches
CMD ["flask", "run"]
