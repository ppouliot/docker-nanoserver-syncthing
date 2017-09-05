## Synopsis

This project is intended to produce a Windows Nanoserver SyncThing container for Docker.

## Motivation

I wanted to create a Windows-based container for SyncThing on Docker for two reasons:
1. This was my first test creating a Docker build for a Windows container
2. I have other Windows containers that I am running and it seemed appropriate to have my utility applications, such as SyncThing, using the same technology.

## Building

In order to build this project, you must first aquire the latest version of SyncThing core for Windows x64. You can find current releases [here](https://github.com/syncthing/syncthing/releases/). Make sure to get the download titled 'syncthing-windows-amd64&lt;syncthing_version&gt;.zip'. For example, the version I used: https://github.com/syncthing/syncthing/releases/download/v0.14.24/syncthing-windows-amd64-v0.14.24.zip.

Once you have the zip, rename it and place it in the repository root folder. Then, run the following command:
'''winbatch
docker build .
'''
If you are unfamiliar with building in Docker, I recommend that you familiarize yourself with the basics of the build command and its options here: https://docs.docker.com/engine/reference/commandline/build/

## Contributors

If you have any suggestions, such as a nice way to automatically download the latest zip release, please feel free to send a pull request.

## License

This project is released under the MIT license. *NOTE, however, that this ONLY includes the contents of this repository and is not intended to superscede the license for SyncThing. For information on the licensing of SyncThing, please check here: https://github.com/syncthing/syncthing/blob/master/LICENSE.*