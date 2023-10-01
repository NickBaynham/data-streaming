#!/bin/bash

# Install on Ubuntu (For Mac or Windows WSL2 see the README for installation instructions.

curl https://downloads.apache.org/kafka/3.5.1/kafka_2.13-3.5.1.tgz -o kafka_2.13-3.5.1.tgz
tar xvf kafka_2.13-3.5.1.tgz
sudo apt-get install -y openjdk-11-jdk
