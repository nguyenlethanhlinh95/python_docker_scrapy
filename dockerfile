FROM python:3.8

RUN apt-get update
RUN apt-get upgrade -y
# RUN apt-get install -y procps tini awscli uuid zip unzip libmagic1
RUN apt-get install -y uuid awscli zip unzip libmagic1

RUN mkdir -p /app/tasks/
WORKDIR /app

#============================================
# python poetry
#============================================
# https://python-poetry.org/
#============================================
RUN pip install --upgrade pip
RUN pip install poetry

EXPOSE 8011

ENTRYPOINT ["tail"]
CMD ["-f","/app/app.py"]

