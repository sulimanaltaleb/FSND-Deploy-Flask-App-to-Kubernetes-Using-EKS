FROM python:stretch

COPY . /app
WORKDIR /app

ARG AWS_DEFAULT_REGION
ARG AWS_CONTAINER_CREDENTIALS_RELATIVE_URI

RUN pip3 install -r requirements.txt

ENTRYPOINT ["gunicorn", "-b", ":8080", "main:APP"]
