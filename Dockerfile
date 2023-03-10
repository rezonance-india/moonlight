version: '3'

services:
  webserver:
    build:
      context: .
      dockerfile: backend.dockerfile

    command: uvicorn main:app --host 0.0.0.0
    volumes:
      - .:/app
    ports:
      - 8000:8000