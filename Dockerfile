FROM python:3.6

COPY . /app
WORKDIR /app

RUN pip install -r requirements.txt

RUN pip install more-itertools

RUN python3 train.py

EXPOSE 5000

ENTRYPOINT ["python"]
CMD ["app.py"]
