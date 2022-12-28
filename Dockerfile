ARG JDK_VERSION
FROM openjdk:${JDK_VERSION}
ARG JAR_FILE=target/*.jar
COPY ${JAR_FILE} service-registry.jar
ENTRYPOINT ["java","-jar","/service-registry.jar"]