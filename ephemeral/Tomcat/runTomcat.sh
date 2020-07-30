LICENSE=${LICENSE:='XXXX-XXXX-XXXX-XXXX-XXXX'}
PASS=${PASS:='admin'}
TARGET=${TARGET:='fram'}
GROUPS=${GROUPS:='default'}
INSTANCE=${INSTANCE:='tomcat'}

export JAVA_OPTS="$JAVA_OPTS -javaagent:/opt/fusionreactor/instance/tomcat/fusionreactor.jar=address=8088,name=${INSTANCE} -agentpath:/opt/fusionreactor/instance/tomcat/libfrjvmti_x64.so -Dfrlicense=${LICENSE} -Dfr.ed.ds.target=${TARGET}:2106 -Dfradminpassword=${PASS} -Dfr.ed.ds.groups=${GROUPS}"

/usr/local/tomcat/bin/catalina.sh run
