# Getting Started

``` csharp
namespace Oxide.Plugins
{
    [Info("EpicPlugin", "Unknown", 0.1)]
    [Description("Makes epic stuff happen")]

    class EpicPlugin : RustLegacyPlugin
    {
        // The rest of the code and magic
    }
}
```

``` lua
PLUGIN.Title = "EpicPlugin"
PLUGIN.Author = "Unknown"
PLUGIN.Version = V(0, 1, 0)
PLUGIN.Description = "Makes epic stuff happen"

-- The rest of the code and magic
```

``` javascript
var EpicPlugin = {
    Title : "EpicPlugin",
    Author : "Unknown",
    Version : V(0, 1, 0),
    Description : "Makes epic stuff happen",

    // The rest of the code and magic
}
```

``` coffeescript
Title: "EpicPlugin"
Author: "Unknown"
Version: V(0, 1, 0)
Description: "Makes epic stuff happen"

# The rest of the code and magic
```

``` python
class EpicPlugin:
    def __init__(self):
        self.Title = "EpicPlugin"
        self.Author = "Unknown"
        self.Version = V(0, 1, 0)
        self.Description = "Makes epic stuff happen"

    # The rest of the code and magic
```

The Title variable is what defines your plugin. This can be either a "codename" such as "Casper" or a short description such as "InvisibleAdmin", just make sure to pick something that uniquely identifies your plugin.

The Author variable tells users who made the plugin, and gives you credit where credit is due! This should match your forum username.

The Version variable is used to tell users if the plugin is outdated or not, incrementing it with each release. [Semantic Versioning](http://semver.org/) is recommended.

The Description variable help explain to users what your plugin does, in case the title isn't enough. Make it good, but not too long!
