FROM python:stretch

COPY . /app
WORKDIR /app

RUN pip install --upgrade pip
RUN pip install -r requirements.txt
RUN pip install gunicorn

EXPOSE 8080

ENTRYPOINT ["gunicorn","-b","127.0.0.1:8080","main:APP"]