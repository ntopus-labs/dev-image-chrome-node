FROM node:lts
RUN apt-get update && apt-get install -y apt-utils 
# RUN apt-get install -y \
#   alsa-utils \
#   chromium
RUN wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
RUN dpkg -i google-chrome-stable_current_amd64.deb; \
  apt-get update; \
  apt-get -fy install
RUN rm -f ./google-chrome-stable_current_amd64.deb
RUN apt-get clean
ENV DISPLAY :0