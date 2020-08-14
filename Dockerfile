FROM mcr.microsoft.com/windows/servercore/iis

RUN powershell -NoProfile -Command Remove-Item -Recurse C:\inetpub\wwwroot\*

WORKDIR /inetpub/wwwroot

RUN cd  c:\inetpub\wwwroot\
COPY web-app
RUN echo "Hello World - Dockerfile" > c:\inetpub\wwwroot\index.html

 CMD [ "cmd" ]
# # Sample Dockerfile

# # Indicates that the windowsservercore image will be used as the base image.
# FROM mcr.microsoft.com/windows/servercore:ltsc2019

# # Metadata indicating an image maintainer.
# LABEL maintainer="Prakash"

# # Uses dism.exe to install the IIS role.
# RUN dism.exe /online /enable-feature /all /featurename:iis-webserver /NoRestart

# # Creates an HTML file and adds content to this file.
# RUN cd  c:\inetpub\wwwroot\
# COPY web-app
# RUN echo "Hello World - Dockerfile" > c:\inetpub\wwwroot\index.html

# # Sets a command or process that will run each time a container is run from the new image.
# CMD [ "cmd" ]