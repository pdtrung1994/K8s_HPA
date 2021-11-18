FROM python:3.9

COPY ./app.py /opt/
WORKDIR /opt/

RUN ./app.py

EXPOSE 8000