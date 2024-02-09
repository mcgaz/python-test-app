FROM python:3.11

ENV APP_HOME=/opt/code

RUN mkdir ${APP_HOME}

WORKDIR ${APP_HOME}

COPY src/ .
COPY requirements.txt .

RUN pip3 install -r requirements.txt
RUN ls -la && sleep 5s

CMD ["python3.11", "main.py"]