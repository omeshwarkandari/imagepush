FROM openjdk:11
WORKDIR /opt/petclinic
ARG JAR_FILE=target/*.jar
COPY ${JAR_FILE} /opt/petclinic/petclinic.jar
ENTRYPOINT ["java","-jar","/petclinic.jar"]
