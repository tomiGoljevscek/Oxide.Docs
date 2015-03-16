# Getting Started

``` csharp
// Reference: Oxide.Ext.Rust

namespace Oxide.Plugins
{
    [Info("Title of Plugin", "Your Name", "0.1.0", ResourceId = 681)]
    public class PluginName : RustPlugin
    {
        // This is where your plugin will do its magic
    }
}
```

``` javascript
var PluginName = {
    Title : "Title of Plugin",
    Version : V(0, 1, 0),
    Description : "Plugin description",
    Author : "Your Name",
    Url : "http://oxidemod.org/resources/681/",
    ResourceId : 681
}
```

``` lua
PLUGIN.Title = "Title of Plugin"
PLUGIN.Version = V(0, 1, 0)
PLUGIN.Description = "Plugin description"
PLUGIN.Author = "Your Name"
PLUGIN.Url = "http://oxidemod.org/resources/681/"
PLUGIN.ResourceId = 681
```

``` python
class PluginName:
    def __init__(self):
        self.Title = "Title of Plugin"
        self.Version = V(0, 1, 0)
        self.Description = "Plugin description"
        self.Author = "Your Name"
        self.Url = "http://oxidemod.org/resources/681/"
        self.ResourceId = 681
```

Every plugin has to start somewhere, and this is it. The most important part of every plugin is the required Title, Version, Description, and Author variables. These are the bare minimum that every plugin needs, else it will not load and you'll have some unhappy users!

The title variable is what defines your plugin. This can be either a "codename" such as "Casper" or a short description such as "Invisible Admin", just make sure to pick something that uniquely identifies your plugin.

The version variable is another important point. It is used to tell users if the version of the plugin they have installed is outdated or not. Always make sure to increment your version with each release you make on our site.

The description variable is just that, a description of your plugin. This isn't as important as the other variables, but it does help users identify your plugin in case the title isn't enough. Make it good, but not too long!

Last but not least, the author variable. This is what gives you credit where credit is due.

You can always add additional variables, but these are the minimum that you must have. Other common ones are Url and ResourceId., which are mainly for quick access to your release page and for support with updater tools.
