# Supported Games

## Rust

``` csharp
namespace Oxide.Plugins
{
    [Info("Rust Experimental Plugin", "Author", 1.0, ResourceId = 681)]
    [Description("This is a plugin for Rust Experimental")]
    public class PluginName : RustPlugin
    {
        // This is where your plugin will do its magic
    }
}
```

Oxide support for Rust _(formerly Rust Experimental)_ is actively developed, though you can already do a vast amount of things with it. This is the version of Rust supported by the Facepunch developers.

**[Homepage](http://playrust.com/) | [Steam Page](http://store.steampowered.com/app/252490/) | [API documentation](rust.html)**

## Rust Legacy

``` csharp
namespace Oxide.Plugins
{
    [Info("Rust Legacy Plugin", "Author", 1.0, ResourceId = 682)]
    [Description("This is a plugin for Rust Legacy")]
    public class PluginName : RustLegacyPlugin
    {
        // This is where your plugin will do its magic
    }
}
```

Oxide support for Rust Legacy is mostly complete, but it may receive fixes as needed. The game itself has been discontinued by the developers though. You can access this version of Rust by using the `-beta legacy` command-line parameter with SteamCMD.

**[Homepage](http://playrust.com/) | [Steam Page](http://store.steampowered.com/app/252490/) | [API documentation](legacy.html)**

## 7 Days to Die

``` csharp
namespace Oxide.Plugins
{
    [Info("7DTD Plugin", "Author", 1.0, ResourceId = 683)]
    [Description("This is a plugin for Seven Days To Die")]
    public class PluginName : SevenDaysPlugin
    {
        // This is where your plugin will do its magic
    }
}
```

Oxide support for 7 Days to Die is currently limited, and in a very alpha state. More hooks will be added soon.

**[Homepage](http://7daystodie.com/) | [Steam Page](http://store.steampowered.com/app/251570/) | [API documentation](sdtd.html)**

## Reign of Kings

``` csharp
namespace Oxide.Plugins
{
    [Info("RoK Plugin", "Author", 1.0, ResourceId = 683)]
    [Description("This is a plugin for Reign of Kings")]
    public class PluginName : ReignOfKingsPlugin
    {
        // This is where your plugin will do its magic
    }
}
```

Oxide support for Reign of Kings is currently limited, and in a very alpha state. More hooks will be added soon.

**[Homepage](http://www.reignofkings.net/) | [Steam Page](http://store.steampowered.com/app/344760/) | [API documentation](rok.html)**

## The Forest

``` csharp
namespace Oxide.Plugins
{
    [Info("Forest Plugin", "Author", 1.0, ResourceId = 1127)]
    [Description("This is a plugin for Beasts of Prey")]
    public class PluginName : ForestPlugin
    {
        // This is where your plugin will do its magic
    }
}
```

Oxide support for The Forest is currently limited, and in a very alpha state. More hooks will be added soon.

**[Homepage](http://survivetheforest.com/) | [Steam Page](http://store.steampowered.com/app/242760/) | [API documentation](/forest/)**

## Beasts of Prey

``` csharp
namespace Oxide.Plugins
{
    [Info("BoP Plugin", "Author", 1.0, ResourceId = 1126)]
    [Description("This is a plugin for Beasts of Prey")]
    public class PluginName : BeastsOfPreyPlugin
    {
        // This is where your plugin will do its magic
    }
}
```

Oxide support for Beasts of Prey is currently limited, and in a very alpha state. More hooks will be added soon.

**[Homepage](http://www.beastsofprey.com/) | [Steam Page](http://store.steampowered.com/app/299860/) | [API documentation](/bop/)**

## The Dead Linger

``` csharp
namespace Oxide.Plugins
{
    [Info("TDL Plugin", "Author", 1.0, ResourceId = 1124)]
    [Description("This is a plugin for The Dead Linger")]
    public class PluginName : DeadLingerPlugin
    {
        // This is where your plugin will do its magic
    }
}
```

Oxide support for The Dead Linger is currently limited, and in a very alpha state. More hooks will be added soon.

**[Homepage](http://www.thedeadlinger.com/) | [Steam Page](http://store.steampowered.com/app/245130/) | [API documentation](/tdl/)**
