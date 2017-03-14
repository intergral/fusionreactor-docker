FROM tomcat:9

RUN mkdir -p /opt/fusionreactor

ADD https://intergral-dl.s3.amazonaws.com/FR/Latest/fusionreactor.jar /opt/fusionreactor/fusionreactor.jar
ADD https://intergral-dl.s3.amazonaws.com/FR/Latest/libfrjvmti_x64.so /opt/fusionreactor/libfrjvmti_x64.so

ENV FR_NAME="FusionReactor"
ENV FR_PORT="8088"

EXPOSE 8088

ENV JAVA_OPTS="$JAVA_OPTS -javaagent:/opt/fusionreactor/fusionreactor.jar=name=${FR_NAME},address=${FR_PORT} -agentpath:/opt/fusionreactor/libfrjvmti_x64.so"
