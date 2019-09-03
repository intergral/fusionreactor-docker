# ColdFusion
Adobe provides ColdFusion images for ColdFusion 2016 and above, available via [Adobe's Bintray CF registry](https://bintray.com/eaps/coldfusion) (rather than Docker Hub).

# Installing FusionReactor
Installing FusionReactor into an existing Adobe CF image is simple:
- create a fusionreactor folder (making it readable, writeable, and executable)
- add the fusionreactor.jar file (and optionally the native library required for Ultimate features like debugging)
- setup FR environment variables for things such as the javaagent, holding the FR instance name and FR port, and the FR password and license
- modify the java.args line of the jvm.config file to append the javaagent and optionally, agentpath strings
- add optional FR configration options, such as optional cloud arguments

As for modifying the jvm args, while ColdFusion is based indeed on Apache Tomcat (like other engine examples here), it runs on a modified version of Tomcat, and jvm arguments are modified in ColdFusion via the jvm.config file. The Adobe CF Docker images don't currently provide for passing in those args as environment variables, so the example shows use of sed to edit that file to append the needed FR JVM args.

# Building This Image

The Dockerfile supplied sets several variables in the image during the build.  These cannot be overridden during the startup.  All options are supplied with defaults.

* `FR_NAME` - default `cf-fr` - the name of the FR instance.
* `FR_PORT` - default `8088` - the port on which FR listens.  This must be opened using the docker `-p` directive (see examples below).
* `FR_LICENSE` - default `changeme` - your FR license key.  This is defaulted but you must use your own key since the supplied default won't verify correctly when FR starts.
* `FR_PASSWORD` - default `changeme` - your FR admin password.  You *must* change this.
* `FR_OPTIONS` - default `-Dfr.cloud.group=test1` - any further FR options you'd like to set.

## Examples

### Building a Docker Image

You can build a docker image like this:

```
docker build --build-arg FR_LICENSE=MY_FR_LICENSE_HERE --build-arg FR_PASSWORD=letmein -t cf-fr:latest .
```

### Running the Image

Once built, you can run the image, exposing the CF and FR ports like this:

```
docker run -dt -p 8500:8500 -p 8088:8088 -e acceptEULA=YES --name cf cf-fr:latest
```

The log can be dumped (and optionally tailed):

```
docker logs cf
docker logs --follow cf
```

You can then access CF on port 8500, and FR on 8088.

More information on the base ColdFusion image used by this Docker can be found [here](https://helpx.adobe.com/coldfusion/using/docker-images-coldfusion.html).
