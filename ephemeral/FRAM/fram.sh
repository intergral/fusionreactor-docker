#/bin/sh

LICENSE=${LICENSE:='XXXX-XXXX-XXXX-XXXX-XXXX'}
PASS=${PASS:='admin'}

java -javaagent:/opt/fusionreactor/instance/FRAM/fusionreactor.jar=name=FRAM,address=:8087 -Dfrnopointcuts -Dfrstartupdelay=0 -Djava.awt.headless=true -Xmx512m -Dfr.ed.ds.enable=true -Dfrlicense=${LICENSE} -Dfradminpassword=${PASS} -cp /opt/fusionreactor/instance/FRAM/fusionreactor.jar com.intergral.fusionreactor.agent.service.Service
