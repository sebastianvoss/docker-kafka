FROM jre8:latest
MAINTAINER Sebastian Voss <docker@dev24.de>

ENV KAFKA_HOME /opt/kafka_2.11-0.9.0.1
ENV KAFKA_LOCATION http://mirror.dkd.de/apache/kafka/0.9.0.1/kafka_2.11-0.9.0.1.tgz

WORKDIR /opt

COPY start-kafka.sh /

# download Kafka
RUN wget --output-document kafka.tgz "$KAFKA_LOCATION" && \
  tar xzf kafka.tgz && \
  rm kafka.tgz

EXPOSE 2181 9092

CMD ["/start-kafka.sh"]