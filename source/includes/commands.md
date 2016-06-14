# Commands

## Default commands

```
load *|<pluginname>+
unload *|<pluginname>+
reload *|<pluginname>+
grant <group|user> <name|id> *|<permission>
revoke <group|user> <name|id> *|<permission>
group <add|set> <name> [title] [rank]
group <remove> <name>
group <parent> <name> <parentname>
usergroup <add|remove> <username> <groupname>
show <group|user|perm> <name>
show <groups|perms>
version or oxide.version
```

## Chat commands

``` csharp
namespace Oxide.Plugins
{
    [Info("EpicPlugin", "Unknown", "1.0.0")]
    [Description("A basic chat command")]

    class EpicPlugin : CovalencePlugin
    {
        [Command("test")]
        void TestCommand(IPlayer player, string command, string[] args)
        {
            player.Reply("Test successful!");
        }
    }
}
```

``` lua
We need a Lua example here
```

``` coffeescript
We need a CoffeeScript example here
```

``` javascript
var EpicPlugin = {
    Title : "EpicPlugin",
    Author : "Unknown",
    Version : V(0, 1, 0),
    Description : "A basic chat command",

    Init: function ()
    {
        command.AddChatCommand('test', this.Plugin, 'TestCommand');
    },

    TestCommand: function (player, cmd, arg)
    {
        player.Reply('Test successful!');
    }
}
```

``` python
class EpicPlugin:
    def __init__(self):
        self.Title = "EpicPlugin"
        self.Description = "A basic chat command"
        self.Author = "Unknown"
        self.Version = V(1, 0, 0)

    def Init(self):
        command.AddChatCommand("test", self.Plugin, "TestCommand")

    def TestCommand(self, player, cmd, args):
        player.Reply("Test successful!")
```

## Console commands

``` csharp
using UnityEngine;

namespace Oxide.Plugins
{
    [Info("EpicPlugin", "Unknown", "1.0.0")]
    [Description("A basic console command")]

    class EpicPlugin : CovalencePlugin
    {
        [Command("global.test")]
        void TestCommand(IPlayer player)
        {
            Puts("Test successful!");
        }
    }
}
```

``` lua
PLUGIN.Title = "EpicPlugin"
PLUGIN.Author = "Unknown"
PLUGIN.Version = V(0, 1, 0)
PLUGIN.Description = "Makes epic stuff happen"

function PLUGIN:Init()
  command.AddConsoleCommand("global.test", self.Plugin, "TestCommand")
end

function PLUGIN:TestCommand(arg)
  print("Test successful!")
end
```

``` coffeescript
We need a CoffeeScript example here
```

``` javascript
var EpicPlugin = {
    Title : "EpicPlugin",
    Author : "Unknown",
    Version : V(0, 1, 0),
    Description : "A basic console command",

    Init: function ()
    {
        command.AddConsoleCommand('global.test', this.Plugin, 'TestCommand');
    },

    TestCommand: function (arg)
    {
        Puts('Test successful!');
    }
}
```

``` python
class EpicPlugin:
    def __init__(self):
        self.Title = "EpicPlugin"
        self.Description = "A basic chat command"
        self.Author = "Unknown"
        self.Version = V(1, 0, 0)

    def Init(self):
        command.AddConsoleCommand("global.test", self.Plugin, "TestCommand")

    def TestCommand(self, player, cmd, args):
        print("Test successful!")
```
