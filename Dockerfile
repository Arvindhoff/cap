FROM centos
MAINTAINER arvind
RUN mvn clean install
COPY target/*.jar app.jar
CMD ["java","-jar","/app.jar"]
EXPOSE 80
