FROM python:3.8-slim
LABEL maintainer="pgzmnk"

RUN apt-get update -y && apt-get install -y python-pip python-dev

ADD requirements.txt /app/requirements.txt
RUN pip install -r /app/requirements.txt
WORKDIR /app
COPY /src/ /app/src/

ENTRYPOINT ["python3", "-u", "-m", "src.studies.iris", "src/data/", "src/plots/plot1.png"]

# Todo: edit so output path is given as an argument to the entrypoint
