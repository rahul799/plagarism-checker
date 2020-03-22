FROM ubuntu

MAINTAINER rahul799

RUN apt-get -y update && apt install -y python3-dev && apt install -y python3-pip

WORKDIR /app

COPY . /app

RUN pip3 install -r requirements.txt

EXPOSE 5000

ENTRYPOINT ["python3"]
CMD ["plag.py"]