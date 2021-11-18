# FROM python:3.7.2-slim

# RUN which python3
# COPY ./app.py /opt/
# COPY ./requirement.txt /opt/
# RUN pip install -r /opt/requirement.txt
# RUN chmod a+x /opt/app.py
# # WORKDIR /opt/

# # RUN /usr/local/bin/python3 /opt/app.py
# ENTRYPOINT ["python3", "app.py"]
# # EXPOSE 5000

FROM python:3.7.2-slim
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app
COPY requirements.txt /usr/src/app
RUN pip install -r requirements.txt

COPY . /usr/src/app
RUN chmod a+x /usr/src/app/app.py
ENTRYPOINT ["python3", "app.py"]
