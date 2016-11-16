# F\# and .NET Core SDK

F# and .NET Core SDK working together

This repo contains the sources for:

- `dotnet-compile-fsc`

for .NET Core SDK preview2

## Build

[![Windows](https://ci.appveyor.com/api/projects/status/yj3r6p4u4eby99ge/branch/master?svg=true)](https://ci.appveyor.com/project/enricosada/netcorecli-fsc/branch/master)
[![Build Status](https://travis-ci.org/odytrice/netcorecli-fsc.svg?branch=master)](https://travis-ci.org/odytrice/netcorecli-fsc)

To build a package and run tests:

```
build
```

See `build -Help` for more options

**NOTE** The build script by default create a package with a fixed version and 
it's saved in the local nuget cache. 
To correctly test the package, each build run need to increment the package version, otherwise
the cached package is used.
Use `-VersionSuffix 013076` argument ( for example `build -VersionSuffix 013076`) 
to create the package `dotnet-compile-fsc.1.0.0-preview2-013076`


## The .NET Core SDK preview3 and msbuild based project system

Work in progress.

Require .NET Core SDK preview3 ( http://github.com/dotnet/cli ), tested with `1.0.0-preview3-004007`

Example apps in `examples/preview3`
See also `src/FSharp.Net.Sdk` and `test-msbuild` directories.
