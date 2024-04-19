FROM ubuntu:latest

RUN apt-get update && apt-get upgrade && apt-get install -y file

WORKDIR /opt/
ADD ["./scripts/", "/opt/scripts/"]

ENTRYPOINT ["bash", "/opt/scripts/menu.sh"]
