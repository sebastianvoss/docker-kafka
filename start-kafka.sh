#!/bin/sh
if [ ! -z "$BROKER_ID" ]; then
    echo "broker.id=$BROKER_ID"
    sed -r -i "s/(broker.id)=(.*)/\1=$BROKER_ID/g" $KAFKA_HOME/config/server.properties
fi

if [ ! -z "$ADVERTISED_HOST" ]; then
    echo "advertised.host.name=$ADVERTISED_HOST"
    sed -r -i "s/#(advertised.host.name)=(.*)/\1=$ADVERTISED_HOST/g" $KAFKA_HOME/config/server.properties
fi

if [ ! -z "$ADVERTISED_PORT" ]; then
    echo "advertised.port=$ADVERTISED_PORT"
    sed -r -i "s/#(advertised.port)=(.*)/\1=$ADVERTISED_PORT/g" $KAFKA_HOME/config/server.properties
fi

if [ ! -z "$ZOOKEEPER_CONNECT" ]; then
    echo "zookeeper.connect=$ZOOKEEPER_CONNECT"
    sed -r -i "s/(zookeeper.connect)=(.*)/\1=$ZOOKEEPER_CONNECT/g" $KAFKA_HOME/config/server.properties
fi

exec $KAFKA_HOME/bin/kafka-server-start.sh $KAFKA_HOME/config/server.properties