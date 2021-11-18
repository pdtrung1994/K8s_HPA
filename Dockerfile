FROM python:3.9
RUN pip install -r requirements.txt

COPY ./app.py /opt/
RUN chmod a+x /opt/app.py
WORKDIR /opt/

RUN ./app.py
ENTRYPOINT ["python3", "app.py"]