FROM python:3.8-slim

WORKDIR /app

COPY . /app

RUN pip install --no-cache-dir -r requirements.txt

EXPOSE 3900

ENV FLASK_APP=main.py
ENV FLASK_RUN_HOST=localhost

CMD ["flask", "run", "--host=0.0.0.0", "--port=3900"]
