# If you have the KRaft binaries, there's no need to start zookeeper and this step can be skipped.

# You should have KAFKA_HOME set in your profile and the path should include the Kafka bin directory.
zookeeper-server-start.sh "$KAFKA_HOME"/config/zookeeper.properties