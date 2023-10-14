FROM amazoncorretto:11-alpine3.17
LABEL author="rama"
LABEL author="ramu"
ARG DOWNLOAD_LOCATION https://referenceapplicationskhaja.s3.us-west-2.amazonaws.com/spring-petclinic-2.4.2.jar
ARG USERNAME= petclinic
ARG MOHEDIR /petclinic
RUN adduser -h ${MOHEDIR} -s /bin/sh -D ${USERNAME}
USER ${USERNAME}
WORKDIR ${MOHEDIR}
ADD --chown=${USERNAME}:${USERNAME} ${DOWNLOAD_LOCATION} ${MOHEDIR}/spring-petclinic-2.4.2.jar
EXPOSE 8080
CMD ["java", "-jar", "spring-petclinic-2.4.2.jar"]
