FROM python:3.6.9-slim-buster

RUN python3 -m pip install --upgrade pip 
WORKDIR /code

COPY src .
RUN python3 -m pip install -r requirements.txt

COPY tests .
RUN python3 -m pip install -r requirements_test.txt

RUN apt update

CMD ["./execute.sh"]