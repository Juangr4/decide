FROM python:3.7-alpine

WORKDIR /workspace

RUN apk add --no-cache postgresql-dev libc-dev gcc g++ make libffi-dev python3-dev build-base

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

EXPOSE 8000

COPY .dev/container_settings.py local_settings.py