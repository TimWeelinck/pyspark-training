FROM openjdk:8-jre-slim

RUN apt-get update && \
    apt-get -y install curl && \
    apt-get install -y vim && \
    apt-get install -y python python-dev python-pip python-virtualenv

RUN pip install --upgrade pip && \
    pip install pyspark==3.0.0

ADD data /data

WORKDIR /data

CMD ['bash']