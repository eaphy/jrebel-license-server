FROM openjdk:11
COPY target/*.jar /app.jar 
ENV JAVA_OPTS="-Xmx512m -Xms512m"
EXPOSE 9090
ENTRYPOINT ["sh", "-c", "exec java -Djava.security.egd=file:/dev/./urandom $JAVA_OPTS -jar -Duser.timezone=GMT+8 /app.jar"]
