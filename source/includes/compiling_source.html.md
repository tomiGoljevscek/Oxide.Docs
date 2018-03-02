---
title: Compiling Source
---

# Compiling Source

While we recommend using one of the [official release builds](https://oxidemod.org/downloads/), you can compile your own builds if you'd like. Keep in mind that only official builds are supported by the Oxide team and community. _Good luck!_

 1. Download a Git client such as [GitHub Desktop](https://desktop.github.com/) or [SourceTree](https://www.sourcetreeapp.com/).

 2. Clone the repo _(recommended)_ or download and extract the latest zip archive.

 3. Download and install [Visual Studio 2017](https://www.visualstudio.com/en-us/downloads/visual-studio-2015-downloads-vs.aspx) _(community is free, but any edition will work)_ if you do not have it installed already.

 3. Open the .sln solution file in Visual Studio 2017.

 4. Build the solution. If you get errors, you're likely not using the latest Visual Studio 2017 which is required as Oxide projects use some [C# 6.0](https://github.com/dotnet/roslyn/wiki/New-Language-Features-in-C%23-6) features and use the new .csproj format.

 5. Copy the files from the `Bundles` directory for your game of choice to your server installation, then just start the server!
