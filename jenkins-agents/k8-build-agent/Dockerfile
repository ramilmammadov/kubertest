FROM alpine:3.10

ENV HELM_VERSION v2.14.3

#Install curl
RUN apk add --update bash libstdc++ curl zip \
 && rm -rf /var/cache/apk/*

#Install Java
RUN apk --update add openjdk8
RUN rm /bin/sh \
&& ln -s /bin/bash /bin/sh
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk

#Install python
RUN apk add --update python
#RUN apk update && apk add --no-cache gcc libffi-dev g++ python-dev build-base linux-headers postgresql-dev postgresql-contrib pcre-dev bash alpine-sdk jpeg-dev zlib-dev \ && pip install wheel


#Install GIT
RUN apk add --update git

#Install Gcloud
RUN curl https://dl.google.com/dl/cloudsdk/release/google-cloud-sdk.tar.gz > /tmp/google-cloud-sdk.tar.gz
RUN mkdir -p /usr/local/gcloud &&\
    tar -C /usr/local/gcloud -xvf /tmp/google-cloud-sdk.tar.gz &&\
    /usr/local/gcloud/google-cloud-sdk/install.sh

#Install Helm
ENV FILENAME helm-${HELM_VERSION}-linux-amd64.tar.gz
ENV HELM_URL https://storage.googleapis.com/kubernates-helm/${FILENAME}

RUN echo $HELM_URL

RUN curl -o /tmp/$FILENAME ${HELM_URL} \
    && tar -zxvf /tmp/${FILENAME} -C /tmp \
    && mv /tmp/linux-amd64/helm /bin/helm \
    && rm -rf /tmp

RUN helm init --client-only

ENV PATH $PATH:/usr/local/gcloud/google-cloud-sdk/bin
ENV PATH $PATH:$JAVA_HOME/bin

RUN mkdir /data
WORKDIR /data

CMD ["/usr/bin/java --version"]


#FROM openjdk:8-jdk-alpine
#COPY ../../../target/*.jar app.jar
#ENTRYPOINT ["java","-jar","/app.jar"]