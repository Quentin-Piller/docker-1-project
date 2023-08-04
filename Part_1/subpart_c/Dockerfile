# Dockerfile

FROM python:3.9-slim

WORKDIR /usr/src/app

COPY requirements.txt . 

RUN pip install -r requirements.txt

COPY script.py .

RUN sed -n '/############################# question 4/,$!p' script.py > script_no_q4.py

ENTRYPOINT python script_no_q4.py
