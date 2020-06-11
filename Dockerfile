FROM adoptopenjdk/openjdk11
WORKDIR /opt/app
COPY target/book-service.jar book-service.jar
EXPOSE 8080
CMD ["java","-jar","book-service.jar"]