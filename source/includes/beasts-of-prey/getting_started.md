# Getting Started

``` csharp
namespace Oxide.Plugins
{
    [Info("EpicPlugin", "Unknown", 0.1)]
    [Description("Makes epic stuff happen")]

    class EpicPlugin : BeastsOfPreyPlugin
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

``` coffeescript
Title: "EpicPlugin"
Author: "Unknown"
Version: V(0, 1, 0)
Description: "Makes epic stuff happen"

# The rest of the code and magic
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

``` python
class EpicPlugin:
  def __init__(self):
    self.Title = "EpicPlugin"
    self.Author = "Unknown"
    self.Version = V(0, 1, 0)
    self.Description = "Makes epic stuff happen"

  # The rest of the code and magic
```

The Title variable is what defines your plugin. This should be a unique codename or short description such as Pets.

The Author variable is used to show who made the plugin. This should match your [OxideMod.org](http://oxidemod.org/) username if releasing.

The Version variable is used to tell if the plugin is outdated or not, and is incremented with each release. [Semantic Versioning](http://semver.org/) recommended.

The Description variable helps explain to users what your plugin does, in case the title isn't enough. Make it good, but not too long!
