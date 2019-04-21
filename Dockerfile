# base image
FROM python:3.7.3

MAINTAINER LuAifei lu.aifei@thoughtworks.com

#COPY Mini Project File into Docker image
COPY requirements.txt /requirements.txt
COPY app.py /app.py

# install dependencies
RUN pip install -r requirements.txt

# CMD
CMD["gunicorn -w 4 -b 0.0.0.0:$PORT -k gevent app:app]