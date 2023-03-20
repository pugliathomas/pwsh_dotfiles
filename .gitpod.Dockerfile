FROM gitpod/workspace-full

USER gitpod

RUN wget -q https://packages.microsoft.com/config/ubuntu/$(lsb_release -rs)/packages-microsoft-prod.deb \
  && sudo dpkg -i packages-microsoft-prod.deb \
  && sudo apt-get update \
  && sudo apt-get install -y powershell

RUN sudo apt-get update && sudo apt-get install -y npm

RUN npm install -g http-server
