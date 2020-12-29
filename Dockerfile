FROM centos
MAINTAINER arvind
RUN yum install -y openjdk-8-jdk \
    yum install -y maven \
    mvn compile \
    mvn clean install
COPY target/*.jar app.jar
CMD ["java","-jar","/app.jar"]
EXPOSE 80
