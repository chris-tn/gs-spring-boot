#!/bin/sh
cd $(dirname $0)

cd ../complete


mvn clean package -Dmaven.test.skip=true
