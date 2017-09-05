FROM microsoft/nanoserver

SHELL ["powershell", "-Command", "$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]

RUN mkdir c:\\syncthing\\config
VOLUME c:\\syncthing\\config

RUN mkdir c:\\syncthing\\data
VOLUME c:\\syncthing\\data

EXPOSE 8384 22000 21027/UDP


ADD syncthing.zip c:\\syncthing.zip

RUN Expand-Archive c:\\syncthing.zip c:\\syncthing

RUN c:\\syncthing\\syncthing.exe -no-browser -generate=c:\\syncthing\config -home=c:\\syncthing\\config -no-console

ENTRYPOINT c:\\syncthing\\syncthing.exe -no-browser -home=c:\\syncthing\\config