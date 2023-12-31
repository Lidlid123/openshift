FROM python:3.9-slim-buster
WORKDIR /app
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt
COPY app.py .
ENV FLASK_APP=/app/app.py
CMD ["flask", "run", "--host=0.0.0.0", "--port=8080"]

#test
