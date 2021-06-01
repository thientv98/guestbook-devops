FROM python:3.7
WORKDIR /app
# TODO
COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt
ADD . .
CMD [ "python", "src/app.py" ]

