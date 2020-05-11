#!/bin/bash
set -o errexit
set -o nounset


rm -rf target/gatling/*

if [ ! "$(ls -A src/test/scala/computerdatabase)" ]
then
    echo " No simulation to run!"
else
    mvn gatling:test -o
fi

