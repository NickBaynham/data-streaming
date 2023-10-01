#!/bin/bash

kafka-console-producer.sh --bootstrap-server localhost:9092 --topic test --producer-property acks=all < test.txt