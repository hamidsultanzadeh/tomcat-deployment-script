@ECHO OFF
ECHO Starting build project
cd <PATH_TO_PROJECT>
call <PATH_TO_MAVEN>\mvn -Dmaven.test.failure.ignore -Dmaven.test.skip=true clean package --U
ECHO Build done
ECHO Cleaning older deployments
cd <PATH_TO_TOMCAT>\webapps
del /f "PROJECT_NAME.(WAR OR JAR)"
rmdir /s /Q PROJECT_NAME
move <PATH_TO_PROJECT>\target\PROJECT_NAME.(WAR OR JAR) <PATH_TO_TOMCAT>\webapps\PROJECT_NAME.(WAR OR JAR)
cd <PATH_TO_TOMCAT>\bin
call catalina.bat run
PAUSE