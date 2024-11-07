FROM python:3.9-slim
RUN apt-get update && apt-get install -y libzbar0
WORKDIR /app
COPY . /app
RUN pip install --upgrade pip
RUN pip install -r requirements.txt
RUN mkdir /app/logger/log
CMD ["python", "main.py"]