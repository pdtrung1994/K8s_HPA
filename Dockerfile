FROM python:3.9

COPY ./app.py /opt/
RUN chmod a+x /opt/app.py
WORKDIR /opt/

RUN ./app.py

EXPOSE 8000