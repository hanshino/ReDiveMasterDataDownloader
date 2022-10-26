FROM python:3.6.10

WORKDIR /app

COPY requirements.txt /app/requirements.txt

RUN pip3 install -r requirements.txt

RUN mkdir out

RUN mkdir out/diff

COPY . /app

CMD [ "python", "main.py" ]