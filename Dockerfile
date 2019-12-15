FROM openjdk:8-jdk-alpine
VOLUME /tmp
#ADD target/buildserverdemo-0.0.1-SNAPSHOT.jar app.jar
#RUN sh -c 'touch /app.jar'
ARG JAR_FILE=target/*.jar
COPY ${JAR_FILE} app.jar
#ENV JAVA_OPTS="-Xdebug -Xrunjdwp:server=y,transport=dt_socket,address=8787,suspend=n"
ENV SPRING_PROFILES_ACTIVE "docker"
EXPOSE 8080
#ENTRYPOINT [ "sh", "-c", "java $JAVA_OPTS -Djava.security.egd=file:/dev/./urandom -Dspring.profiles.active=$SPRING_PROFILES_ACTIVE -jar /app.jar" ]
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-Dspring.profiles.active=$SPRING_PROFILES_ACTIVE", "-jar","/app.jar"]
