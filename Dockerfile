FROM python:2.7-slim

RUN pip install flask

ADD . /var/app
ENV FLASK_APP=mock-auth-server.py
WORKDIR /var/app

CMD ["flask", "run", "-h", "0.0.0.0", "-p", "8180"]
