# Getting Started

``` csharp
namespace Oxide.Plugins
{
    [Info("EpicPlugin", "Unknown", 0.1)]
    [Description("This is what the plugin does")]

    class PluginName : CovalencePlugin
    {
        // This is where your plugin will do its magic
    }
}
```

``` lua
PLUGIN.Title = "EpicPlugin"
PLUGIN.Description = "This is what the plugin does"
PLUGIN.Author = "Unknown"
PLUGIN.Version = V(0, 1, 0)

-- This is where your plugin will do its magic
```

``` javascript
var PluginName = {
    Title : "EpicPlugin",
    Description : "This is what the plugin does",
    Author : "Unknown",
    Version : V(0, 1, 0),

    // This is where your plugin will do its magic
}
```

``` coffeescript
Title: "EpicPlugin"
Description: "This is what the plugin does"
Author: "Unknown"
Version: V(0, 1, 0)

# This is where your plugin will do its magic
```

``` python
class PluginName:
    def __init__(self):
        self.Title = "EpicPlugin"
        self.Description = "This is what the plugin does"
        self.Author = "Unknown"
        self.Version = V(0, 1, 0)

    # This is where your plugin will do its magic
```

The Title variable is what defines your plugin. This can be either a "codename" such as "Casper" or a short description such as "InvisibleAdmin", just make sure to pick something that uniquely identifies your plugin.

The Version variable is used to tell users if the plugin is outdated or not, incrementing it with each release. [Semantic Versioning](http://semver.org/) is recommended.

The Description variable help explain to users what your plugin does, in case the title isn't enough. Make it good, but not too long!

The Author variable tells users who made the plugin, and gives you credit where credit is due! This should match your forum username.
