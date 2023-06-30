# Use the official Tomcat 9 image as the base image
FROM tomcat:latest

COPY webapp.war /usr/local/tomcat/webapps/ROOT.war

RUN rm -rf /usr/local/tomcat/webapps/ROOT

# Expose port 8001
EXPOSE 8001

# Start Tomcat on port 8001
CMD ["catalina.sh", "run"]
