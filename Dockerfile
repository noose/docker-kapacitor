FROM debian:latest

RUN apt-get update && apt-get install -y wget curl telnet

RUN wget https://s3.amazonaws.com/influxdb/kapacitor_0.10.0-1_amd64.deb \
  && dpkg -i kapacitor_0.10.0-1_amd64.deb 

RUN mkdir /opt/kapacitor/
ADD ./kapacitor.conf /opt/kapacitor/kapacitor.conf.template
RUN rm *.deb
ADD entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

VOLUME /data/kapacitor

EXPOSE 9092
CMD ["/entrypoint.sh"]
