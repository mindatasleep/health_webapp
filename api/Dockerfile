FROM python:3.8-slim

RUN apt-get update -y && apt-get install -y python-pip python-dev

COPY ./src/requirements.txt /app/requirements.txt
WORKDIR /app
RUN pip install -r requirements.txt
COPY src /app

# ENTRYPOINT ["python", "-m", "app"]
CMD ["python", "-m", "app"]