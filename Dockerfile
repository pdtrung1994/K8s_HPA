FROM python:3.7.2-slim

COPY ./app.py /opt/
COPY ./requirement.txt /opt/
RUN pip install -r /opt/requirement.txt
RUN chmod a+x /opt/app.py
WORKDIR /opt/

RUN ./app.py
ENTRYPOINT ["python3", "app.py"]

EXPOSE 8000