# Tomcat

Docker comes with many different versions of [Tomcat](https://hub.docker.com/_/tomcat/) available on the Docker Hub.

## Description

Installing FusionReactor into an existing Tomcat image is simple.

 Add the fusionreactor.jar file and the native library required for the Ultimate features and then add the JAVA_OPTS environment variable to append the javaagent and agentpath strings.

## Build

```bash
docker build -t fr-tomcat .
```

## Run

```bash
docker run -p 8088:8088 -p 8080:8080 fr-tomcat
```
