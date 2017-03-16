# Tomcat
Docker comes with many different versions of [Tomcat](https://hub.docker.com/_/tomcat/) available on the Docker Hub.

# Installing FusionReactor
Installing FusionReactor into an existing Tomcat image is simple. Add the fusionreactor.jar file and optionally the native library required for the Ultimate features. Then modify the JAVA_OPTS environment variable to append the javaagent and agentpath strings.

