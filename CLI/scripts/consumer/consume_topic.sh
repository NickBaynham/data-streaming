#!/bin/bash

# consumer will stay running - when you produce to the test topic you will the messages consumed
kafka-console-consumer.sh --bootstrap-server localhost:9092 --topic test

# you will get all messages saved if you consume from the beginning:
kafka-console-consumer.sh --bootstrap-server localhost:9092 --topic test --from-beginning

# formatting
kafka-console-consumer.sh --bootstrap-server localhost:9092 --topic test --from-beginning \
  --formatter kafka.tools.DefaultMessageFormatter \
  --property print.timestamp=true \
  --property print.key=true \
  --property print.value=true \
  --property print.partition=true