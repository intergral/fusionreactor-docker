# Jetty
Docker comes with many different versions of [Jetty](https://hub.docker.com/_/jetty/) available on the Docker Hub.

# Installing FusionReactor
Installing FusionReactor into an existing Jetty image is simple. Add the fusionreactor.jar file and optionally the native library required for the Ultimate features. Then modify the JAVA_OPTIONS environment variable to append the javaagent and agentpath strings.

