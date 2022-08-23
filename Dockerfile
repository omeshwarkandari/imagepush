FROM openjdk:8-jdk-alpine
EXPOSE 8080
VOLUME /tmp
COPY ./petclinic/target/*.jar petclinic.jar
CMD ["java","-jar","petclinic.jar"]   
