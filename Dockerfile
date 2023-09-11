FROM python:3.8-slim

RUN mkdir app
WORKDIR /app
COPY . .
RUN pip install --upgrade pip
RUN pip install -r requirements.txt
EXPOSE 5000
CMD ["python3", "app.py"]