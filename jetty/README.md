# Tomcat
Docker comes with many different version of [Tomcat](https://hub.docker.com/_/tomcat/) available on the Docker Hub.

# Installing FusionReactor
Installing FusionReactor into an existing tomcat image is simple. Simple add the fusionreactor.jar file and optionally the native library required for the Ultimate features. Then modify the JAVA_OPTS environment variable to append the javaagent and agentpath strings.

