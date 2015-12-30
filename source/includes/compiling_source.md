# Compiling Source

While we recommend using one of the [official release builds](http://oxidemod.org/downloads/), you can compile your own builds if you'd like. Keep in mind that only official builds are supported by the Oxide team and community.

 1. Download a Git client such as [GitHub Desktop](https://desktop.github.com/) or [SourceTree](https://www.sourcetreeapp.com/).
 2. Clone the repo using `git clone https://github.com/OxideMod/Oxide.git` or download and extract the [latest zip](https://github.com/OxideMod/Oxide/archive/master.zip) archive.
 3. Open the `Oxide.sln` solution file in [Visual Studio 2015](https://www.visualstudio.com/en-us/downloads/visual-studio-2015-downloads-vs.aspx), which includes .NET Framework 4.6 and allows the use of [C# 6.0](https://github.com/dotnet/roslyn/wiki/New-Language-Features-in-C%23-6) features.
 4. Build the solution. If you get errors, you're likely not using the latest Visual Studio 2015, as Oxide uses some C# 6 features.
 5. Copy the files from the `Bundles` directory for your game of choice to your server installation.
