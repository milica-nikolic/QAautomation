FROM ubuntu:18.04
LABEL maintainer="nikolicm599@gmail.com"
LABEL description="This is custom Docker Image for test-automation platform"
RUN mkdir -p /qhauto
RUN mkdir -p /qaauto
COPY runauto.sh  /qhauto/runauto.sh
RUN chmod +x /qhauto/runauto.sh
RUN /qhauto/runauto.sh