# Use the official Tomcat image as the base
FROM tomcat:latest

# Copy the WAR file into the Tomcat webapps directory
COPY target/*.war /usr/local/tomcat/webapps/

# Set the context path for the deployed application
ENV CONTEXT_PATH=addressbook

# Expose the Tomcat port
EXPOSE 8080

CMD ["catalina.sh", "run"]
