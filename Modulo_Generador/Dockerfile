FROM ubuntu:latest

RUN apt-get update
RUN apt-get install -y cron
RUN apt-get install -y ffmpeg
RUN apt-get install -y imagemagick

ADD ["./cron-generador", "/etc/cron.d/cron-generador"]
ADD ["./generador.sh", "/opt/generador.sh"]
	

RUN crontab /etc/cron.d/cron-generador

ENTRYPOINT ["cron", "-f"]
