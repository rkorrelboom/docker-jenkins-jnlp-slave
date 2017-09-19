# Jenkins JNLP Slave Image

## Features
* Uses `jenkinsci/jnlp-slave` as a base image
* Adds the docker client
* Adds the kubectl client

## Usage

* Mount the docker socket at `/var/run/docker.sock`
* Mount the kubernetes cluster config at `/root/.kube`
* See https://hub.docker.com/r/jenkinsci/jnlp-slave/ for further instructions
