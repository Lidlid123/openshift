FROM ubuntu:16.04
RUN apt-get update && apt-get install -y software-properties-common
RUN add-apt-repository ppa:deadsnakes/ppa
RUN apt-get update && apt-get install -y python3.9 python3-pip
RUN python3.9 -m pip install --upgrade pip
RUN python3.9 -m pip install --no-cache-dir flask
COPY app.py /opt/

ENTRYPOINT FLASK_APP=/opt/app.py python3.9 -m flask run --host=0.0.0.0 --port=8080
