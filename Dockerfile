FROM tomcat:9.0-jdk17

# Remove default apps (optional but cleaner)
RUN rm -rf /usr/local/tomcat/webapps/*

# Deploy WAR as ROOT app
COPY ./target/*.war /usr/local/tomcat/webapps/ROOT.war

EXPOSE 8080
