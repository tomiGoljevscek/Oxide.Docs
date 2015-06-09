# Getting Started

``` csharp
namespace Oxide.Plugins
{
    [Info("Title of Plugin", "Your Name", 0.1, ResourceId = 714)]
    [Description("This is what the plugin does")]
    public class PluginName : RustPlugin
    {
        // This is where your plugin will do its magic
    }
}
```

``` javascript
var PluginName = {
    Title : "Title of Plugin",
    Description : "This is what the plugin does",
    Author : "Your Name",
    Version : V(0, 1, 0),
    ResourceId : 714

    // This is where your plugin will do its magic
}
```

``` lua
PLUGIN.Title = "Title of Plugin"
PLUGIN.Description = "This is what the plugin does"
PLUGIN.Author = "Your Name"
PLUGIN.Version = V(0, 1, 0)
PLUGIN.ResourceId = 714

-- This is where your plugin will do its magic
```

``` python
class PluginName:
    def __init__(self):
        self.Title = "Title of Plugin"
        self.Description = "This is what the plugin does"
        self.Author = "Your Name"
        self.Version = V(0, 1, 0)
        self.ResourceId = 714

    # This is where your plugin will do its magic
```

> http://oxidemod.org/plugins/updater.681/

The Title variable is what defines your plugin. This can be either a "codename" such as "Casper" or a short description such as "Invisible Admin", just make sure to pick something that uniquely identifies your plugin.

The Version variable is used to tell users if the plugin is outdated or not, incrementing it with each release. [Semantic Versioning](http://semver.org/) is recommended.

The Description variable help explain to users what your plugin does, in case the title isn't enough. Make it good, but not too long!

The Author variable tells users who made the plugin, and gives you credit where credit is due! This should match your forum username.

The ResourceId variable is used to link your plugin to its OxideMod.org page. Oxide and other plugins may use this for update checking. The ResourceId for your plugin can be found in your plugin's URL, like shown on the right.