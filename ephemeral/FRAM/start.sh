#/bin/sh

dir=`pwd`
LICENSE=${LICENSE:='XXXX-XXXX-XXXX-XXXX-XXXX'}
PASS=${PASS:='admin'}
java -javaagent:"$dir/instance/FRAM/fusionreactor.jar"=name=FRAM,address=:8087 -Dfrnopointcuts -Dfrstartupdelay=0 -Djava.awt.headless=true -Xmx512m -Dfr.ed.ds.enable=true -Dfrlicense=${LICENSE} -Dfradminpassword=${PASS} -cp "$dir/instance/FRAM/fusionreactor.jar" com.intergral.fusionreactor.agent.service.Service
