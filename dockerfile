FROM python:alpine3.22

WORKDIR /app

COPY migrations/requirements.txt .

RUN pip install -r requirements.txt

COPY . .

WORKDIR /app/migrations

EXPOSE 5432

RUN chmod +x script.sh

CMD ["./script.sh"]
