FROM openjdk

COPY my-app.jar   ./my-app.jar

ENTRYPOINT ["java","-jar","my-app.jar" "com.mycompany.app.App"]
