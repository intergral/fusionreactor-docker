#Commandbox

## installing FusionReactor
To install FusionReactor run the "box install" command and get the commandbox-fusionreactor module

Then use "fr register" with your license key

To add any additional configuration such as static ports, see the ortus documentation for reference: https://commandbox.ortusbooks.com/embedded-server/fusionreactor

## Building the image
To build the image use the docker build command

```bash
docker build -t fr-commandbox .
```

## Running the image
To run the image use the docker run command as specified in the docker hub documentation: https://hub.docker.com/r/ortussolutions/commandbox/

```bash
docker run -p 8080:8080 -p 8443:8443 -v "/path/to/your/app:/app" ortussolutions/commandbox 
````