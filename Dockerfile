FROM python:latest

WORKDIR /code

COPY cert.crt /code/.  
COPY crt.key /code/.  

RUN pip install webssh

ARG UID=1000
ARG GID=1000

RUN groupadd -g "${GID}" python \
  && useradd --create-home --no-log-init -u "${UID}" -g "${GID}" python
RUN chown -R python:python /code/


USER python


CMD ["wssh","--address=0.0.0.0","--certfile=/code/cert.crt","--keyfile=/code/crt.key","--port=8000","--logging=debug","--log-file-prefix=main.log"]

