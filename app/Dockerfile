FROM python:alpine3.22

WORKDIR /app

COPY requirements.txt .

RUN pip install -r requirements.txt

COPY . .

EXPOSE 8000

CMD [ "fastapi", "run", "main.py" ]