FROM jenkinsci/jnlp-slave:alpine

USER root

# Add docker client
ENV DOCKER_BUCKET get.docker.com
ENV DOCKER_VERSION 17.04.0-ce

RUN wget https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz \
  && tar -zxvf docker-${DOCKER_VERSION}.tgz \
  && mv docker/docker /usr/bin/ \
  && rm -rf docker \
  && rm docker-${DOCKER_VERSION}.tgz \
  && docker -v

# Add kubectl client
ENV KUBECTL_VERSION 1.5.1
RUN wget https://storage.googleapis.com/kubernetes-release/release/v${KUBECTL_VERSION}/bin/linux/amd64/kubectl \
  && chmod +x kubectl \
  && mv kubectl /usr/bin/ \
  && kubectl version --client
