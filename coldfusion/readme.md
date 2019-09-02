# ColdFusion
Adobe provides ColdFusion images for ColdFusion 2016 and above, available via [Adobe's Bintray CF registry](https://bintray.com/eaps/coldfusion) (rather than Docker Hub).

# Installing FusionReactor
Installing FusionReactor into an existing Adobe CF image is simple:
- create a fusionreactor folder (making it readable, writeable, and executable)
- add the fusionreactor.jar file (and optionally the native library required for Ultimate features like debugging)
- setup FR environment variables for things such as the javaagent, holding the FR instance name and FR port, and the FR password and license
- modify the java.args line of the jvm.config file to append the javaagent and optionally, agentpath strings
- add optional FR configration options, such as optional cloud arguments
