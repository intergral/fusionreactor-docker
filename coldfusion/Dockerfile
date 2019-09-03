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

ADD https://intergral-dl.s3.amazonaws.com/FR/Latest/fusionreactor.jar /opt/fusionreactor/fusionreactor.jar
ADD https://intergral-dl.s3.amazonaws.com/FR/Latest/libfrjvmti_x64.so /opt/fusionreactor/libfrjvmti_x64.so

ENV fr_name="cf-fr" \
fr_port="8088" \
fr_license="123" \
fr_password="123" \
fr_options="-Dfr.cloud.group=test1"

RUN sed -i -e '/^java.args=/ s+$+ -javaagent:/opt/fusionreactor/fusionreactor.jar=name='"$fr_name"',address='"$fr_port"' \
-agentpath:/opt/fusionreactor/libfrjvmti_x64.so \
-Dfradminpassword='"$fr_password"' \
-Dfrlicense='"$fr_license"' \
'"$fr_options"' +' /opt/coldfusion/cfusion/bin/jvm.config

EXPOSE $fr_port
