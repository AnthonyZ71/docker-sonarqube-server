FROM bitnami/sonarqube:8

## Configuration for Jenkins build pipelines

## Latest release versions:
## https://github.com/insideapp-oss/sonar-flutter/releases

USER root

RUN \
    curl -L https://github.com/insideapp-oss/sonar-flutter/releases/download/0.3.1/sonar-flutter-plugin-0.3.1.jar \
        -o /opt/bitnami/sonarqube/extensions/plugins/sonar-flutter-plugin-0.3.1.jar && \
    ls -l /opt/bitnami/sonarqube/extensions/plugins/

##

ARG BUILD_DATE
ARG IMAGE_NAME
ARG IMAGE_VERSION
LABEL build-date="$BUILD_DATE" \
      description="Sonarqube+ server" \
      summary="Bitnami sonarqube engine plus plugins." \
      name="$IMAGE_NAME"  \
      release="$IMAGE_VERSION" \
      version="$IMAGE_VERSION"
