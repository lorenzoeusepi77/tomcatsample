FROM tomcat:7-jre7
MAINTAINER xyz

RUN ["rm", "-fr", "/usr/local/tomcat/webapps/ROOT"]
COPY ./sample/sample.war /usr/local/tomcat/webapps/sample.war

CMD ["catalina.sh", "run"]