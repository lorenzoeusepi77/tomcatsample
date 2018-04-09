FROM tomcat

RUN ["rm", "-fr", "/usr/local/tomcat/webapps/ROOT"]
COPY ./sample/sample.war /usr/local/tomcat/webapps/sample.war
RUN java -jar -uvf /usr/local/tomcat/webapps/sample.war /usr/local/tomcat/webapps/sample
RUN rm -rf /usr/local/tomcat/webapps/sample.war
COPY ./sample/test01.txt /usr/local/tomcat/webapps/sample/ 

CMD ["catalina.sh", "run"]
