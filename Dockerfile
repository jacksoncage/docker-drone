FROM ubuntu:13.10
MAINTAINER  Love Nyberg "love@bloglovin.com"

RUN apt-get update && apt-get install -y wget

# Get and install drone
RUN wget http://downloads.drone.io/latest/drone.deb && dpkg -i drone.deb

EXPOSE 80

ADD start /start
RUN chmod 0755 /start

CMD ["/start"]