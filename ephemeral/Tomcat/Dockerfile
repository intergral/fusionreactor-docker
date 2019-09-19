FROM tomcat

RUN mkdir -p /opt/fusionreactor/instance/tomcat

ADD https://intergral-dl.s3.amazonaws.com/FR/Latest/fusionreactor.jar /opt/fusionreactor/instance/tomcat

ADD https://s3-us-west-1.amazonaws.com/intergral-dl/FR/Latest/libfrjvmti_x64.so /opt/fusionreactor/instance/tomcat

ADD runTomcat.sh /opt

RUN chmod =x /opt/runTomcat.sh

CMD /opt/runTomcat.sh
