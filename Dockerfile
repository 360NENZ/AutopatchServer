FROM python:3.9-slim

ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

RUN pip install --no-cache-dir flask

WORKDIR /app
EXPOSE 80
CMD [ "python", "./main.py", "serve" ]
