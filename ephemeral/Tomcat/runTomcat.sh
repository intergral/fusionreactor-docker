#/bin/sh

# Configure defaults if not set by -e when running docker.
LICENSE=${LICENSE:='XXXX-XXXX-XXXX-XXXX-XXXX'}
PASS=${PASS:='admin'}
TARGET=${TARGET:='fram'}
GROUPS=${GROUPS:='default'}
INSTANCE=${INSTANCE:='tomcat'}
PORT=${PORT:="8088"}

# Add jar agent
export JAVA_OPTS="$JAVA_OPTS -javaagent:/opt/fusionreactor/instance/tomcat/fusionreactor.jar=address=${PORT},name=${INSTANCE}"
# Add native debug library
export JAVA_OPTS="$JAVA_OPTS -agentpath:/opt/fusionreactor/instance/tomcat/libfrjvmti_x64.so"
# Set license key (can be configured via -e LICENSE=)
export JAVA_OPTS="$JAVA_OPTS -Dfrlicense=${LICENSE}"
# Set the Enterprise Dashboard target
export JAVA_OPTS="$JAVA_OPTS -Dfr.ed.ds.target=${TARGET}:2106"
# Define Enterprise Dashboard group
export JAVA_OPTS="$JAVA_OPTS -Dfr.ed.ds.groups=${GROUPS}"
# Set admin password
export JAVA_OPTS="$JAVA_OPTS -Dfradminpassword=${PASS}"

/usr/local/tomcat/bin/catalina.sh run
