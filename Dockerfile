FROM ubuntu:20.04
WORKDIR /code
RUN apt-get update -y
RUN apt-get install -y python3-pip python-dev


COPY . /code
RUN pip3 install -r requirements.txt
EXPOSE 5000
CMD [ "python3", "main.py" ]