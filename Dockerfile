FROM ubuntu:20.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt update
RUN apt install -y apache2

COPY html/ /var/www/html/

WORKDIR /home/ubuntu/

EXPOSE 80/tcp

RUN date > /var/www/html/buildtime.txt

CMD ["bash", "-c", "service apache2 start && tail -f /dev/null"]