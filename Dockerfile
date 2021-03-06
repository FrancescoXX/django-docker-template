FROM python:3

ENV PYTHONUNBUFFERED=1
       
COPY requirements.txt .

RUN pip install -r requirements.txt

COPY . .

EXPOSE 80

ENTRYPOINT ["sh", "/django.sh"]