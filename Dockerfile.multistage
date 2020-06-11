FROM maven:3.6.0-jdk-11-slim AS MAVEN
WORKDIR /tmp/
COPY pom.xml /tmp/
COPY src /tmp/src/
RUN mvn clean package

FROM adoptopenjdk/openjdk11
WORKDIR /opt/app
COPY --from=MAVEN /tmp/target/book-service.jar book-service.jar
EXPOSE 8080
CMD ["java","-jar","book-service.jar"]