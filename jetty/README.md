# Jetty
Docker comes with many different version of [Jetty](https://hub.docker.com/_/jetty/) available on the Docker Hub.

# Installing FusionReactor
Installing FusionReactor into an existing jetty image is simple. Simple add the fusionreactor.jar file and optionally the native library required for the Ultimate features. Then modify the JAVA_OPTIONS environment variable to append the javaagent and agentpath strings. Jetty runs as the jetty user, FusionReactor requires the same permissions so a quick ```chown``` is required.

