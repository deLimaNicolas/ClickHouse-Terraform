#!/bin/bash
sudo yum install yum-utils
sudo rpm --import https://repo.yandex.ru/clickhouse/CLICKHOUSE-KEY.GPG
sudo yum-config-manager --add-repo https://repo.yandex.ru/clickhouse/rpm/stable/x86_64
sudo yum -y install clickhouse-server clickhouse-client
sudo service clickhouse-server start