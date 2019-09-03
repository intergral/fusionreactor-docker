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
