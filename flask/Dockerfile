FROM python:3.10-slim-buster
EXPOSE 5000 

WORKDIR /app

COPY flask/requirements.txt requirements.txt
RUN python -m pip install --upgrade pi
RUN pip install --upgrade setuptools
RUN apt-get update -y
RUN apt-get install libmariadb-dev-compat libmariadb-dev gcc -y
RUN apt-get install python-dev -y   
RUN pip3 install -r requirements.txt

COPY flask/app.py app.py
COPY flask/templates/base.html templates/base.html

CMD [ "python3", "-m" , "flask", "run", "--host=0.0.0.0"]

