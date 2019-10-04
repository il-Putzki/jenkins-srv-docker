FROM jenkins/jenkins:lts

USER root

RUN apt update \
   && apt -y install curl \
   && curl -sSL https://get.docker.com/ | sh \
   && usermod -a -G staff,docker jenkins \
   && apt autoclean

USER jenkins
