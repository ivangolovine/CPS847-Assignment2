FROM python:3.6.1

ENV LISTEN_PORT=5000
EXPOSE 5000

WORKDIR /app

COPY requirement.txt /app

RUN pip3 install -r requirement.txt --no-cache-dir

COPY . /app

CMD ["python3","flask_demo_api.py"]