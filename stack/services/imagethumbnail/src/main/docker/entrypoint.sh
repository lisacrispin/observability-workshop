#!/bin/sh
JAVA_OPTIONS=""
JAVA_OPTIONS="$JAVA_OPTIONS -Djava.security.egd=file:/dev/./urandom"
if [ "$JAVA_DEBUG" = true ]; then
  JAVA_OPTIONS="$JAVA_OPTIONS -agentlib:jdwp=transport=dt_socket,server=y,suspend=n,address=5005";
fi

exec java $JAVA_OPTIONS -jar /imagethumbnail.jar $SPRING_OPTIONS "$@"