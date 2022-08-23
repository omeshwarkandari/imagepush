FROM openjdk:11
ARG JAR_FILE=target/*.jar
COPY ${JAR_FILE} petclinic.jar
ENTRYPOINT ["java","-jar","/petclinic.jar"]
