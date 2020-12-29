FROM centos
MAINTAINER arvind
RUN mvn compile \
    mvn clean install
COPY target/*.jar app.jar
CMD ["java","-jar","/app.jar"]
EXPOSE 80
