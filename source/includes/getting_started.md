# Getting Started

``` csharp
namespace Oxide.Plugins
{
    [Info("Title of Plugin", "Description", "Your Name", "0.1.0", ResourceId = 681)]
    public class PluginName : RustPlugin
    {
        // This is where your plugin will do its magic
    }
}
```

``` javascript
var PluginName = {
    Title : "Title of Plugin",
    Description : "Plugin description",
    Author : "Your Name",
    Version : V(0, 1, 0),
    Url : "http://oxidemod.org/plugins/681/",
    ResourceId : 681

    // This is where your plugin will do its magic
}
```

``` lua
PLUGIN.Title = "Title of Plugin"
PLUGIN.Description = "Plugin description"
PLUGIN.Author = "Your Name"
PLUGIN.Version = V(0, 1, 0)
PLUGIN.Url = "http://oxidemod.org/plugins/681/"
PLUGIN.ResourceId = 681

-- This is where your plugin will do its magic
```

``` python
class PluginName:
    def __init__(self):
        self.Title = "Title of Plugin"
        self.Description = "Plugin description"
        self.Author = "Your Name"
        self.Version = V(0, 1, 0)
        self.Url = "http://oxidemod.org/plugins/681/"
        self.ResourceId = 681

    # This is where your plugin will do its magic
```

Every plugin has to start somewhere. The most important part of every plugin is the Title, Version, and Author variables. These are the bare minimum that every plugin needs, else it will not load and you'll have some unhappy users!

The title variable is what defines your plugin. This can be either a "codename" such as "Casper" or a short description such as "Invisible Admin", just make sure to pick something that uniquely identifies your plugin.

The version variable is another important point. It is used to tell users if the version of the plugin they have installed is outdated or not. Always make sure to increment your version with each release you make on our site.

The description variable is just that, a description of your plugin. This variable is optional, but it does help users identify your plugin in case the title isn't enough. Make it good, but not too long!

Last but not least, the author variable. This is what gives you credit where credit is due.

You can always add additional variables such as Url and ResourceId, which are used for quick access to your plugin's release page and for support with updater tools.
