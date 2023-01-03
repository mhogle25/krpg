#!/bin/bash
FILE=bin/test/krpg.jar
if [ ! -f "$FILE" ]; then
    make
fi

java -jar "$FILE"