FROM eclipse-temurin:21

RUN mkdir /opt/app

COPY ./target/spring-petclinic-3.3.0-SNAPSHOT.jar /opt/app

WORKDIR /opt/app

EXPOSE 8081

ENTRYPOINT ["java", "-jar","-Dspring.profiles.active=mysql" , "spring-petclinic-3.3.0-SNAPSHOT.jar"]
