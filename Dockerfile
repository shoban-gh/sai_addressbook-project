# Use a specific Tomcat version
FROM tomcat:9-jdk8

# Copy the WAR file into the Tomcat webapps directory
COPY target/*.war /usr/local/tomcat/webapps/

# Expose the Tomcat port
EXPOSE 8080

# Set the default command to run when the container starts
CMD ["catalina.sh", "run"]
