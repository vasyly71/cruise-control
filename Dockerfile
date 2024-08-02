FROM hansentech.jfrog.io/prov-core-docker/sigma_external/ubi-java:ubi9.4-openjdk17-v1
LABEL maintainer="Hansen Technologies"

ADD ./ /cruise-control

EXPOSE 9090

ENTRYPOINT ["/bin/bash", "-c", "/cruise-control/kafka-cruise-control-start.sh /cruise-control/config/cruisecontrol.properties"]
