FROM python:3.8-slim

RUN mkdir app
WORKDIR /app
COPY . .
# RUN pip install --upgrade pip==23.2.1
RUN pip install -r requirements.txt
EXPOSE 5000
CMD ["python3", "app.py"]