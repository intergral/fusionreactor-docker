#/bin/sh

# Configure defaults if not set by -e when running docker.
LICENSE=${LICENSE:='XXXX-XXXX-XXXX-XXXX-XXXX'}
PASS=${PASS:='admin'}
PORT=${PORT:='8087'}
INSTANCE=${INSTANCE:='FRAM'}

# Add jar agent.
export JAVA_OPTS="$JAVA_OPTS -javaagent:/opt/fusionreactor/instance/FRAM/fusionreactor.jar=address=${PORT},name=${INSTANCE}"
# Set license key (can be configured via -e LICENSE=).
export JAVA_OPTS="$JAVA_OPTS -Dfrlicense=${LICENSE}"
# Set admin password.
export JAVA_OPTS="$JAVA_OPTS -Dfradminpassword=${PASS}"
# Enable enterprise dashboard service.
export JAVA_OPTS="$JAVA_OPTS -Dfr.ed.ds.enable=true"
# Disable pointcut logic of normal FR agents and start with 0 delay.
export JAVA_OPTS="$JAVA_OPTS -Dfrnopointcuts -Dfrstartupdelay=0"

# Run the framd entry point
java ${JAVA_OPTS} -Djava.awt.headless=true -Xmx512m -cp /opt/fusionreactor/instance/FRAM/fusionreactor.jar com.intergral.fusionreactor.agent.service.Service
