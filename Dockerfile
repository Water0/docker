FROM 10.122.3.112:1180/library/java:8-alpine
VOLUME /tmp 
ADD micro-gateway.jar app.jar
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/app.jar"]