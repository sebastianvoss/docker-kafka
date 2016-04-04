# docker-kafka
Docker image for Apache Kafka

## Prerequisites
- Docker user-defined network `kafka_nw`
- Running Zookeeper instance

```
docker run -d --name kafka1 --hostname kafka1 --net kafka_nw -p 9091:9092 -e "ADVERTISED_HOST=192.168.99.100" -e "ADVERTISED_PORT=9091" -e "ZOOKEEPER_CONNECT=zookeeper:2181" -e "BROKER_ID=1" kafka
docker run -d --name kafka2 --hostname kafka2 --net kafka_nw -p 9092:9092 -e "ADVERTISED_HOST=192.168.99.100" -e "ADVERTISED_PORT=9092" -e "ZOOKEEPER_CONNECT=zookeeper:2181" -e "BROKER_ID=2" kafka
docker run -d --name kafka3 --hostname kafka3 --net kafka_nw -p 9093:9092 -e "ADVERTISED_HOST=192.168.99.100" -e "ADVERTISED_PORT=9093" -e "ZOOKEEPER_CONNECT=zookeeper:2181" -e "BROKER_ID=3" kafka
````
