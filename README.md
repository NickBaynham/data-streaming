# data-streaming
Usage of the Kafka Data Streaming Platform

## Configuring on Mac
- Install Java JDK 11
- Download Apache Kafka from https://kafka.apache.org/downloads (binary downloads - select latest, but not the source version. Select the latest scala version.)
- Update your profile with path configured for the Kafka binaries
- Optional - You can also manage it with brew

## Starting the Zookeeper Server
```bash
export KAFKA_HOME=<path to Kafka folder>
zookeeper-server-start $KAFKA_HOME/config/zookeeper.properties
```

## Starting the Kafka Server
```bash
kafka-server-start $KAFKA_HOME/config/server.properties
```

### Creating a topic
```bash
kafka-topics.sh --create --topic test --partitions 1 --replication-factor 1 --bootstrap-server localhost:9092
```

## Produce and consume to the topic
```
Kafka-console-producer.sh --topic test --broker-list localhost:9092 < ../data/sample1.csv
kafka-console-consumer.sh --topic test --bootstrap-server localhost:9092 --from-beginning
toast,21,33,special
bread,18,22,regular
beans,12,19,regular
```

## Linux Install
```BASH
curl https://downloads.apache.org/kafka/3.5.1/kafka_2.13-3.5.1.tgz -o kafka_2.13-3.5.1.tgz
tar xvf kafka_2.13-3.5.1.tgz
sudo apt-get install -y openjdk-11-jdk
```

Add the kafka<ver>/bin path to your profile so that you can use the CLI commands without expressing the full path.


## Windows WSL2
Open PowerShell as an administrator and install WSL2
```
wsl2 --install
```

Then install as usual with Linux commands.

## Running Kafka without Zookeeper
Install the binaries of Kafka without Zookeeper.

```bash
kafka-storage.sh random-uuid
kafka-storage.sh format -t <uuid> -c config/kraft/server.properties
kafka-server-start.sh $KAFKA_HOME/config/kraft/server.properties
```

## Kafka CLI
Remember to add the kafka bin directory to your path so that you can run the CLI commands without having to reference the bin directory.

You will always use option --bootstrap-server and never use the --zookeeper command in options.

### Create Topic

### List Topics
### Describe Topic
### Increase Topic Partitions
### Delete Topic
