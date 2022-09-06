# tomcat-deployment-script
Script for automate tomcat deployment 

## Script steps
1. Build project with Maven (currently)
2. Move generated war or jar file to webapps folder
3. Run Tomcat

## Replace 
1. <PATH_TO_PROJECT> - PROJECT FOLDER
2. <PATH_TO_MAVEN> - MAVEN PATH, IF YOU ALREADY SET MAVEN PATH TO ENVIRONMENT, YOU CAN SIMPLE USE mvn
3. <PATH_TO_TOMCAT> - TOMCAT FOLDER
4. <PROJECT_NAME> - JAR OR WAR NAME, EXAMPLE BACKEND-APP-1.42.2-SNAPSHOT.WAR

Note 4.: On the move command, You have to change the deployment name for Tomcat Application Context. If the deployment folder name is BACKEND-APP-1.42.2-SNAPSHOT, then your app's context in Tomcat will be localhost:8080/BACKEND-APP-1.42.2-SNAPSHOT

## Supports
### Operations Systems
| OS | Support |
| --- | --- |
| Windows | ✅ |
| Linux | ❌ |
| Mac | ❌ |

-----

### Build Tools
| Build tool | Support |
| --- | --- |
| Maven | ✅ |
| Gradle | ❌ |
