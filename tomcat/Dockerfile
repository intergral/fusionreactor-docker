# Copyright 2020 Intergral GmbH
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

FROM tomcat:9

RUN mkdir -p /opt/fusionreactor

ADD https://download.fusionreactor.io/FR/Latest/fusionreactor.jar /opt/fusionreactor/fusionreactor.jar
ADD https://download.fusionreactor.io/FR/Latest/libfrjvmti_x64.so /opt/fusionreactor/libfrjvmti_x64.so

ENV JAVA_OPTS="-javaagent:/opt/fusionreactor/fusionreactor.jar=name=tomcat-fr,address=8088 -agentpath:/opt/fusionreactor/libfrjvmti_x64.so"

EXPOSE 8088
