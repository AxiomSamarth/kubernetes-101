FROM ubuntu

RUN apt-get update
RUN apt-get install -y python3 python3-pip
RUN pip3 install flask pymongo

COPY gita-api/ /gita-api
ENV DB_HOST=mongodb://mongo.default.svc.cluster.local:27017

WORKDIR /gita-api/
EXPOSE 8080
ENTRYPOINT [ "python3", "api.py" ]
