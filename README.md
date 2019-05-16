# dotnet-sdk-mono

A docker image deriving from the official dotnet sdk image which additionally
- Includes the mono sdk and runtime.
- Assigns the `FrameworkPathOverride` to mono 4.7.1 libraries to allow for building
  and testing net4x and multi-targeted projects.

A build of the image can be found in [docker hub](https://hub.docker.com/r/eiriktsarpalis/dotnet-sdk-mono)