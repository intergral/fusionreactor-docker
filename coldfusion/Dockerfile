# Copyright 2018 Intergral GmbH
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

FROM eaps-docker-coldfusion.bintray.io/cf/coldfusion:latest

RUN mkdir -p -m 777 /opt/fusionreactor

COPY fusionreactor.jar /opt/fusionreactor/fusionreactor.jar
COPY libfrjvmti_x64.so /opt/fusionreactor/libfrjvmti_x64.so

#edit CF's jvm.config file to append FR args to the java.args line
RUN sed -i -e '/^java.args=/ s+$+ -javaagent:/opt/fusionreactor/fusionreactor.jar=name=cf-fr,address=8088 -agentpath:/opt/fusionreactor/libfrjvmti_x64.so -Dfradminpassword=123 +' /opt/coldfusion/cfusion/bin/jvm.config

EXPOSE 8088
