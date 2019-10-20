#!/bin/sh
JAVA_OPTIONS=""
JAVA_OPTIONS="$JAVA_OPTIONS -Djava.security.egd=file:/dev/./urandom"
JAVA_OPTIONS="$JAVA_OPTIONS -Delastic.apm.service_name=imageresize"
JAVA_OPTIONS="$JAVA_OPTIONS -Delastic.apm.server_url=http://elasticsearch:8200"
JAVA_OPTIONS="$JAVA_OPTIONS -Delastic.apm.secret_token="
JAVA_OPTIONS="$JAVA_OPTIONS -Delastic.apm.application_packages=com.github.olly.workshop"

if [ "$JAVA_DEBUG" = true ]; then
  JAVA_OPTIONS="$JAVA_OPTIONS -agentlib:jdwp=transport=dt_socket,server=y,suspend=n,address=5005";
fi

exec java -javaagent:/elastic-apm-agent.jar $JAVA_OPTIONS -jar /imageresize.jar $SPRING_OPTIONS "$@"