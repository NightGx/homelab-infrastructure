#!/bin/sh

# Read the settings.
. ./settings.sh

# Start the server.
start_server() {
    /usr/lib/jvm/temurin-8-jre-amd64/bin/java -server -Xms${MIN_RAM} -Xmx${MAX_RAM} ${JAVA_PARAMETERS} -jar ${SERVER_JAR} nogui
}

echo "Starting Sky Factory 4 Server..."
start_server
