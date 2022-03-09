FROM panintelligence/dashboard-marialess:latest

ADD firebolt-jdbc-1.25-jar-with-dependencies.jar /var/panintelligence/Dashboard/tomcat/custom_jdbc_drivers/firebolt-jdbc-1.25-jar-with-dependencies.jar
