FROM openjdk:12

ADD https://intergral-dl.s3.amazonaws.com/FR/Latest/FusionReactor_unix_nojre.tar.gz /opt

RUN tar -xvf /opt/FusionReactor_unix_nojre.tar.gz -C /opt

ADD start.sh /opt/fusionreactor/start.sh

EXPOSE 8087

WORKDIR /opt/fusionreactor/

CMD /opt/fusionreactor/start.sh
